version(arrogant_test_app)
{
   import arrogant;
   import std.stdio : writeln, stdout;
   
   void main()
   {
      writeln("Simple example --");

      // Simple example
      {
         auto src = `<html><head></head><body><div>Hello World</div></body></html>`;
         auto arrogant = Arrogant();
         auto tree = arrogant.parse(src);

         // Change div content from "Hello World!" to "Hello D!"
         tree.byTagName("div").front.innerText = "Hello D!";

         // Print the edited html
         writeln(tree.document);

         assert(tree.document.innerHTML == "<html><head></head><body><div>Hello D!</div></body></html>");
      }

      writeln("Css selector --");
      
      // Css Selector
      {
         auto src = `
            <html>
               <body>
                  <div>First div</div>
                  <div class="data">
                     <div>Inner div</div>
                     <a href="wrong_link.html">Not this</a>
                     <img src="img.jpg">
                     <a href="right_link.html">This link</a>
                  </div>
                  <img src="img.jpg">
                  <a href="outer_link.html">Other</a>
               </body>
            </html>`;

         auto arrogant = Arrogant();
         auto tree = arrogant.parse(src);
         
         // Looks for an anchor next to an img inside a div
         auto url = tree.byCssSelector("div > img + a").front["href"];
         writeln("Selector: div > img + a  Result:", url);
         assert(url == "right_link.html");
      }
     
      writeln("Ranges --");
      
      // Ranges
      {
         import std.algorithm: startsWith, filter, each;

         auto src = `
            <html>
               <body>
                  <a href="/test.html">Relative link</a>
                  <a href="/test2.html">Relative link</a>
                  <a href="http://www.dlang.org">D programming language</a>
               </body>
            </html>
         `;

         auto arrogant = Arrogant();
         auto tree = arrogant.parse(src);
         
         // Add rel="nofollow" to all http/https links
         // https://issues.dlang.org/show_bug.cgi?id=11934 "each" implementation is bugged 
         tree
         .byAttributeKey("href")
         .filter!(x => x["href"].startsWith("http://") || x["href"].startsWith("https://"))
         .each!(e => e["rel"] = "nofollow");

         writeln(tree.byAttributeKey("href"));
         
         // Just one must be changed
         assert(tree.byAttribute("rel", "nofollow").length == 1);
         assert(tree.byAttribute("rel", "nofollow").front.innerText == "D programming language");
         assert("rel" in tree.byAttribute("href", "http://www.dlang.org").front);
      }
      
      writeln("Cloning --");
      
      // Cloning
      {
         auto src = `
            <html>
               <body> 
                  <div data-custom="template">
                     <div>Fruit: <span class="name">Apple</span></div>
                     <div>Idx: <span>150</span></div>
                  </div>
               </body>
            </html>
         `;

         auto arrogant = Arrogant();
         auto tree = arrogant.parse(src);

         auto body = tree.body;

         // Retrieve template from page
         auto divTemplate = tree.byAttribute("data-custom", "template").front;

         // Clone template for each item
         foreach(idx, item; ["pear", "orange", "cherry"])
         {
            import std.conv : to;
            
            auto newDiv = divTemplate.clone();
            auto spans = newDiv.byTagName("span");
            spans[0].innerText = item;
            spans[1].innerText = idx.to!string;

            body.appendChild(newDiv);
         }

         // Delete template & remove from page
         divTemplate.deleteNode();

         import std.algorithm : map, each;

         // Print out all detected fruits
         tree
         .byClass("name")
         .map!(item => item.innerText)
         .each!(x => writeln("Fruit detected: ", x));

         assert(tree.byCssSelector("body > div").length == 3);
         assert(tree.byCssSelector("body > div span.name")[1].innerText == "orange");
      }
      
      writeln("Moving --");
      
      // Moving elements
      {
         auto src = `
            <html>
               <body> 
                  <div id="container"></div>
                  <a href="link.html">outside</a>
               </body>
            </html>
         `;

         auto arrogant = Arrogant();
         auto tree = arrogant.parse(src);
         auto link = tree.byTagName("a").front;
         auto container = tree.byId("container").front;

         // Move link inside div
         container.appendChild(link);

         writeln("Link parent tag: ", link.parent.tagId);

         assert(container.firstChild.tagId == MyHtmlTagId.a);
         assert(container.firstChild.innerText == "outside");
         assert(tree.byTagName("a").length == 1);           
      }

      // Get summaries from forum.dlang.org
      {
         import std.net.curl;
         import std.range;

         auto src = "https://forum.dlang.org".get;
         auto arrogant = Arrogant();
         auto tree = arrogant.parse(src);
         size_t cnt = 0;

         writeln("Recent posts on forum.dlang.org:\n");
         foreach(post; tree.byClass("forum-index-col-lastpost").take(2))
         {
            string title = post.byClass("forum-postsummary-subject").front["title"];
            string author = post.byClass("forum-postsummary-author").front["title"];
            string date = post.byCssSelector("span.forum-postsummary-time > span").front["title"];

            writeln("Title: ", title);
            writeln("By: ", author);
            writeln("Date: ", date);
            writeln("--------------");

            cnt++;
         }

         writeln("Total: ", cnt, " posts");
         assert(cnt != 0);
      }
   }
}

// Some internal tests
version(arrogant_tests)
{

   import arrogant;
   import std.stdio : writeln, stdout;

   // Testing reference count
   unittest {
      Node n;
      {
         auto src = `<html><head></head><body><div>Hello World</div></body></html>`;
         auto arrogant = Arrogant();
         auto tree = arrogant.parse(src);
         
         // n lifespan is longer than parent one
         n = tree.byTagName("div").front;
      }

      assert(n.toString == "<div>Hello World</div>");
   }  

   unittest {
      NodeRange r;
      {
         auto src = `<html><head></head><body><div>Hello World</div></body></html>`;
         auto arrogant = Arrogant();
         auto tree = arrogant.parse(src);
         
         // n lifespan is longer than parent one
         r = tree.byTagName("div");
      }

      assert(r.front.toString == "<div>Hello World</div>");
   } 

   unittest {
      Tree tree2;
      {
         Tree tree3;
         auto src = `<html><head></head><body><div>Hello World</div></body></html>`;
         auto arrogant = Arrogant();
         auto tree = arrogant.parse(src);
         
         tree2 = tree;
         tree3 = tree2;
      }

      assert(tree2.byTagName("div").front.toString == "<div>Hello World</div>");
   } 

   void main() {}

}

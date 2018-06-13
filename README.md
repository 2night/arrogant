# arrogant
Fully conformant HTML5 dom library with CSS4 selectors. Based on [Modest](https://github.com/lexborisov/Modest).

# how to build & install modest.

Modest is written in pure C, without any external dependency.
Just fetch source code and compile.

```
git clone https://github.com/2night/arrogant.git
git submodule update --recursive
cd c/Modest
sudo make install
```

# run an example

```
dub -c arrogant_test_app
```

# hello world

```d
import arrogant;
import std.stdio : writeln, stdout;

void main()
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
```
# get data from webpage

```d
import arrogant;
import std.net.curl;
import std.stdio : writeln, stdout;

void main()
{
   auto src = "https://forum.dlang.org".get;
   auto arrogant = Arrogant();
   auto tree = arrogant.parse(src);
   size_t cnt = 0;

   writeln("Recent posts on forum.dlang.org:\n");
   
   // Search for summary divs
   foreach(post; tree.byClass("forum-index-col-lastpost"))
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
 }
 ```

# more

Check [this code](https://github.com/2night/arrogant/blob/master/source/arrogant_test_app.d) or [read documentation](http://arrogant.dpldocs.info/index.html)

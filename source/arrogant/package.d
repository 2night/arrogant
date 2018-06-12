module arrogant;

import arrogant.c.modest;

// Public enums & stuffs
public import arrogant.c.common;

import std.traits;
import std.conv;
import std.typecons : Nullable, Flag, Yes, No, RefCounted, RefCountedAutoInitialize;
import std.traits;
import std.string : toStringz; 

// To manage c memory correctly! (I hope so...)
template CObjectWrapper(T, alias dtor = null)
{
   import std.typecons : RefCounted, RefCountedAutoInitialize;

   // This struct is refcounted!
   struct ObjectWrapper
   {
      // These function are not used
      @disable this(this);
      void opAssign(T rhs) { assert(0, "ObjectWrapper: can't assign."); }

      this(T payload) { this.data = payload; }
      ~this() { dtor(data); }

      private T data;
   }

   private RefCounted!(ObjectWrapper, RefCountedAutoInitialize.no) payload;
   private void initWrapper(T data) { payload = typeof(payload)(data); }
}

/** Use this enum with `node.byAttribute()` search  */
enum AttributeSearchType
{
   exact,            /// 
   startsWith,       /// 
   endsWith,         ///
   contains,         ///
   spaceSeparated,   ///
   hypenSeparated    ///
}

class ArrogantException : Exception 
{
   this(uint err) 
   { 
      import std.conv : to; 
      super("Arrogant exception: " ~ to!string(err)); 
   }
}

/** An html attribute of a tag */
struct Attribute
{
   /** The attribute key */
   @property auto key() 
   {
      
      size_t length; 
      auto k = myhtml_attribute_key(attribute, &length); 
      return k[0..length].to!string;
   }

   // The attribute value */
   @property auto value() 
   { 
      size_t length; 
      auto v = myhtml_attribute_value(attribute, &length); 
      return v[0..length].to!string;
   }

   @disable this();
   
   private this(myhtml_tree_attr_t* attr) { attribute = attr; }
   private myhtml_tree_attr_t* attribute;
}

/** A HTML Node */
struct Node
{
   /** 
   * Get the tag id for this node (ex: a, div, body, ...) 
   * Examples:
   * --------------------
   * tree.body.tag.writeln(); // prints "body"
   * --------------------
   */
   MyHtmlTagId  tagId() { return cast(MyHtmlTagId )myhtml_tree_node.tag_id; }
   string  tag() { return tagId.to!string; } /// Ditto

   /** 
   * "in" operator to check for an attribute inside a node 
   * Examples:
   * --------------------
   * if ("href" in node) writeln("Link: ", node["href"]);
   * --------------------
   */ 
   bool opBinaryRight(string op)(string key) if (op == "in")
   {
      auto attr = myhtml_attribute_by_key (myhtml_tree_node, key.toStringz, key.length);
      return attr !is null;
   }

   /** Read an attribute from node */
   auto opIndex(string attribute) 
   { 
      Nullable!string value;
      auto attr = myhtml_attribute_by_key (myhtml_tree_node, attribute.toStringz, attribute.length);

      if (attr !is null) 
      {
         size_t length; 
         auto v = myhtml_attribute_value(attr, &length); 
         return Nullable!string(v[0..length].to!string);
      }

      return value;
   }

   /** Write an attribute */
   auto opIndexAssign(string value, string key) 
   { 
      removeAttribute(key);
      myhtml_attribute_add (myhtml_tree_node, key.toStringz, key.length, value.toStringz, value.length, MyEncodingList.default_);
      return value;
   }

   auto opIndexAssign(typeof(null) value, string key) 
   { 
      removeAttribute(key);
      myhtml_attribute_add (myhtml_tree_node, key.toStringz, key.length, null, 0, MyEncodingList.default_);
      return value;
   }

   /** 
      Remove an attribute 
      Returns: `true` if attribute exists `false` otherwise.
   */
   bool removeAttribute(string key)
   {
      auto attr = myhtml_attribute_by_key (myhtml_tree_node, key.toStringz, key.length);
      if (attr !is null)
      {
         myhtml_attribute_delete(myhtml_node_tree(myhtml_tree_node), myhtml_tree_node, attr);
         return true;
      }

      return false;
   }

   /** Create a new html node */
   this(ref Tree tree, MyHtmlTagId  tag, MyHtmlNamespace ns = MyHtmlNamespace.html)
   {
      myhtml_tree_node = myhtml_node_create (
         tree.myhtml_tree,
         tag,
         ns
      );
   }

   /** Remove node from tree and delete it */
   void deleteNode() { myhtml_node_delete_recursive(myhtml_tree_node); }
   
   ///
   Nullable!Node firstChild()
   {
      Nullable!Node ret;
      auto val = myhtml_node_child(myhtml_tree_node);

      if (val !is null) ret = Node(val);
      return ret;
   }

   ///
   Nullable!Node lastChild()
   {
      Nullable!Node ret;
      auto val = myhtml_node_last_child(myhtml_tree_node);

      if (val !is null) ret = Node(val);
      return ret;
   }

   ///
   Nullable!Node parent()
   {
      Nullable!Node ret;
      auto val = myhtml_node_parent(myhtml_tree_node);

      if (val !is null) ret = Node(val);
      return ret;
   }

   ///
   Nullable!Node next()
   {
      Nullable!Node ret;
      auto val = myhtml_node_next(myhtml_tree_node);

      if (val !is null) ret = Node(val);
      return ret;
   }

   ///
   Nullable!Node previous()
   {
      Nullable!Node ret;
      auto val = myhtml_node_prev(myhtml_tree_node);

      if (val !is null) ret = Node(val);
      return ret;
   }

   /*
      Get children of this node.
      Returns: a lazy `NodeRange`. If you want to edit children, convert to array before.
   */
   auto children()
   {
      struct ChildrenRange
      {
         this(myhtml_tree_node_t *n) { parent = n; current = myhtml_node_child(parent); }

         @property empty() {  return current == null; }
         auto front() { return Node(current); }
         void popFront() { current = myhtml_node_next(current); }

         private:
         myhtml_tree_node_t *current;
         myhtml_tree_node_t *parent;
      }

      return ChildrenRange(myhtml_tree_node);
   }

   /** All node's attributes 
      Returns: a lazy range of Attributes
   */
   auto attributes()
   {
      struct AttributesRange
      {
         this(myhtml_tree_node_t *n) { parent = n; current = myhtml_node_attribute_first(parent); }

         @property empty() {  return current == null; }
         auto front() { return Attribute(current); }
         void popFront() { current = myhtml_attribute_next(current); }

         private:
         myhtml_tree_attr_t *current;
         myhtml_tree_node_t *parent;
      }

      return AttributesRange(myhtml_tree_node);
   }

   /** Get the text of this node. Only for text nodes! */
   @property string text()
   {
      return myhtml_node_text(myhtml_tree_node, null).to!string;
   }

   /** Set the text of this node. Only for text nodes! */
   @property void text(string s)
   {
      myhtml_node_text_set(myhtml_tree_node, s.toStringz, s.length, MyEncodingList.default_);
   }

   /** Return node html representation */
   string toString() 
   {
      return innerHTML();
   }

   /// Ditto
   @property string innerHTML()
   {
      mycore_string_raw_t str_raw;
      mycore_string_raw_clean_all(&str_raw);
      scope(exit) mycore_string_raw_destroy(&str_raw, false);

      if(myhtml_serialization_tree_buffer(myhtml_tree_node, &str_raw)) return "";
      return str_raw.data[0..str_raw.length].to!string;
   }

   /** Set node html. All children will be deleted. */
   @property void innerHTML(string s)
   {
      // Create a new tree to parse fragment
      auto tree = Tree(myhtml_tree_get_myhtml(myhtml_node_tree(myhtml_tree_node)));
      tree.parseFragment(s);

      // Clone fragment and move to current tree
      auto cloned = tree.first.clone(myhtml_node_tree(myhtml_tree_node));

      // Delete all children!
      import std.array : array;
      foreach(node; children.array)
         node.deleteNode;

      // Append new child
      appendChild(cloned);
   }

   /** Set node innerText. All children will be deleted. */
   @property void innerText(string s)
   {
      import std.array : array;
      
      // Create a text node
      auto text_node = myhtml_node_create (
         myhtml_node_tree(myhtml_tree_node),
         MyHtmlTagId ._text,
         MyHtmlNamespace.html
      );

      Node nodeToAppend = Node(text_node);
      nodeToAppend.text = s;

      // Delete all children!
      foreach(node; children.array)
         node.deleteNode;

      // Append new child
      appendChild(nodeToAppend);
   }

   ///
   @property string innerText()
   {

      struct CallbackPayload
      {
         bool insideTag;
         string data;
      }

      CallbackPayload payload;

      extern(C) mystatus_t callback(const char* buffer, size_t size, void* ctx)
      {
         import std.array : replace;
         if (size == 0) return 0;

         auto pl = cast(CallbackPayload*) ctx;

         if (buffer[0] == '<') pl.insideTag = true; 
         else if (buffer[0] == '>') pl.insideTag = false; 
         else if (!pl.insideTag) pl.data ~= buffer[0..size].replace("&amp;", "&").replace("&gt;", ">").replace("&lt;", "<").replace("&nbsp;","\n"); 

         return 0;
      }

      if(myhtml_serialization_tree_callback(myhtml_tree_node, &callback, &payload)) return "";
      return payload.data;

   }

   /** 
      Create a copy of this node owned by another tree
      Returns: a `Node` owned by `destination`
   */
   Node clone(Tree destination) { return clone(destination.myhtml_tree); }
   
   // Create a copy of this node
   Node clone() { return clone(myhtml_node_tree(myhtml_tree_node)); }

   ///
   bool isSelfClosing() { return myhtml_node_is_close_self(myhtml_tree_node); }
   
   ///
   bool isVoidElement() { return myhtml_node_is_void_element(myhtml_tree_node); }
   
   /** Detach node from tree without destroying */
   void detach() { myhtml_node_remove(myhtml_tree_node); }

   ///
   void appendChild(Node n) { n.detach(); myhtml_node_append_child(myhtml_tree_node, n.myhtml_tree_node); }
   
   ///
   void insertBefore(Node n) { myhtml_node_insert_before(myhtml_tree_node, n.myhtml_tree_node); }
   
   ///
   void insertAfter(Node n) { myhtml_node_insert_after(myhtml_tree_node, n.myhtml_tree_node); }
   
   ///
   void insertToAppropriatePlace(Node n) { myhtml_node_insert_to_appropriate_place(myhtml_tree_node, n.myhtml_tree_node); }

   /** 
      Search children using a css 3.1 selector 
      Returns: a lazy range of nodes
      See_Also: byAttribute, byAttributeKey, byTagName, byClass, byId
   */
   auto byCssSelector(string selector)
   {
      import std.exception : enforce;

      auto mycss  = mycss_create();
      mycss_init(mycss);
     
      auto entry  = mycss_entry_create();
      mycss_entry_init(mycss, entry);

      auto finder = modest_finder_create_simple();

      mystatus_t out_status;
      mycss_selectors_list_t *list = mycss_selectors_parse
      (
         mycss_entry_selectors(entry),
         MyEncodingList.default_,
         selector.toStringz, selector.length,
         &out_status
      );

      enforce(list != null && ((list.flags & mycss_selectors_flags.MyCSS_SELECTORS_FLAGS_SELECTOR_BAD) == 0), "Can't compile css selector: " ~ selector);

      myhtml_collection_t* collection = null;
     
      modest_finder_by_selectors_list(finder, myhtml_tree_node, list, &collection);

      // Free resources!
      mycss_selectors_list_destroy(mycss_entry_selectors(entry), list, true);
      modest_finder_destroy(finder, true);
      mycss_entry_destroy(entry, true);
      mycss_destroy(mycss, true);

      return NodeRange (collection);
   }

   /** 
      Search children by tag name
      Returns: a lazy range of nodes
      See_Also: byAttribute, byAttributeKey, byClass, byId, byCssSelector
   */
   auto byTagName(MyHtmlTagId  name)
   {
      mystatus_t status;
      myhtml_collection_t* myhtml_collection = myhtml_collection_create(0, null);
      auto collection = NodeRange (myhtml_get_nodes_by_tag_id_in_scope(myhtml_node_tree(myhtml_tree_node), myhtml_collection, myhtml_tree_node, name, &status));
      
      if (MYHTML_FAILED(status)) throw new ArrogantException(status);

      return collection;
   }

   /// Ditto
   auto byTagName(string name)
   {
      mystatus_t status;
      myhtml_collection_t* myhtml_collection = myhtml_collection_create(0, null);
      auto collection = NodeRange (myhtml_get_nodes_by_name_in_scope(myhtml_node_tree(myhtml_tree_node), myhtml_collection, myhtml_tree_node, name.toStringz, name.length, &status));
      
      if (MYHTML_FAILED(status)) throw new ArrogantException(status);

      return collection;
   }

    /** 
      Search children by class (space separated)
      Returns: a lazy range of nodes
      See_Also: byAttribute, byAttributeKey, byTagName, byId, byCssSelector
   */
   auto byClass(string className) { return byAttribute!(AttributeSearchType.spaceSeparated)("class", className);}
   
    /** 
      Search children by id
      Returns: a lazy range of nodes
      See_Also: byAttribute, byAttributeKey, byTagName, byClass, byCssSelector
   */
   auto byId(string id) { return byAttribute("id", id);}
   
   /** 
      Search children with a specified attribute
      Returns: a lazy range of nodes
      See_Also: byAttribute, byTagName, byClass, byId, byCssSelector
   */
   auto byAttributeKey(string name)
   {
      mystatus_t status;
      myhtml_collection_t* myhtml_collection = myhtml_collection_create(0, null);
      auto collection = NodeRange (myhtml_get_nodes_by_attribute_key(myhtml_node_tree(myhtml_tree_node), myhtml_collection, myhtml_tree_node, name.toStringz, name.length, &status));
      if (MYHTML_FAILED(status)) throw new ArrogantException(status);

      return collection;
   }

   /** 
      Search children by tag attribute key/val. 
      Returns: a lazy range of nodes
      See_Also: byAttributeKey, byTagName, byClass, byId, byCssSelector
   */
   auto byAttribute(AttributeSearchType st = AttributeSearchType.exact, Flag!"caseInsensitive" caseInsensitive = No.caseInsensitive)(string key, string value)
   {
      mystatus_t status;
      typeof(&myhtml_get_nodes_by_attribute_value) callback;

      final switch(st)
      {
         case AttributeSearchType.exact: callback = &myhtml_get_nodes_by_attribute_value; break;
         case AttributeSearchType.startsWith: callback = &myhtml_get_nodes_by_attribute_value_begin; break;
         case AttributeSearchType.endsWith: callback = &myhtml_get_nodes_by_attribute_value_end; break;
         case AttributeSearchType.contains: callback = &myhtml_get_nodes_by_attribute_value_contain; break;
         case AttributeSearchType.spaceSeparated : callback = &myhtml_get_nodes_by_attribute_value_whitespace_separated; break;
         case AttributeSearchType.hypenSeparated: callback = &myhtml_get_nodes_by_attribute_value_hyphen_separated; break;
      }

      myhtml_collection_t* myhtml_collection = myhtml_collection_create(0, null);

      auto collection = NodeRange 
      (
         callback
         (
            myhtml_node_tree(myhtml_tree_node),
            myhtml_collection,
            myhtml_tree_node,
            caseInsensitive == Yes.caseInsensitive,
            key.toStringz, key.length,  value.toStringz, value.length, 
            &status
         )
      );

      if (MYHTML_FAILED(status)) throw new ArrogantException(status);
      return collection;
   }

   private:

   Node clone(myhtml_tree_t* destination)
   {

      struct CopyQueueItem
      {
         myhtml_tree_node_t* destParent;  // Where node will be appended
         myhtml_tree_node_t* toCopy;      // The node to copy
      }
      
      import std.container.dlist;
      auto copyQueue = DList!CopyQueueItem();

      // Clone a single node without children
      myhtml_tree_node_t* cloneNode(myhtml_tree_t* _destination, myhtml_tree_node_t* _node)
      {
         // Create a new node rooted on destination treee
         auto ret = myhtml_node_create (
            _destination,
            _node.tag_id,
            _node.ns
         );

         // Copy text if present
         {
            size_t textLength;
            auto text = myhtml_node_text(_node, &textLength);
            myhtml_node_text_set(ret, text, textLength, MyEncodingList.default_);
         }

         // Clone attributes
         for (auto attribute = myhtml_node_attribute_first(_node); attribute != null; attribute = myhtml_attribute_next(attribute))
         {
            size_t keyLength, valueLength; 
            auto k = myhtml_attribute_key(attribute, &keyLength); 
            auto v = myhtml_attribute_value(attribute, &valueLength); 
            myhtml_attribute_add (ret, k, keyLength, v, valueLength, MyEncodingList.default_);
         }

         // Return the filled node.
         return ret;
      }

      // Clone the root
      auto destinationRoot = cloneNode(destination, myhtml_tree_node);
      auto currentNode = myhtml_tree_node;
      auto currentDestNode = destinationRoot;
    
      while(true)
      {
         // Add children of current node to queue
         for (auto child = myhtml_node_child(currentNode); child != null; child = myhtml_node_next(child))
            copyQueue.insertBack(CopyQueueItem(currentDestNode, child));

         if (copyQueue.empty) break;

         // Get the first item in queue
         auto destParent = copyQueue.front.destParent;
         currentNode = copyQueue.front.toCopy;

         // Remove first element of list
         copyQueue.removeFront();
         
         // Clone the children and add to new parent
         currentDestNode = cloneNode(destination, currentNode);
         myhtml_node_append_child(destParent, currentDestNode);
      }

      return Node(destinationRoot);
   }
   
   this(myhtml_tree_node_t *node) { myhtml_tree_node = node; }
   myhtml_tree_node_t* myhtml_tree_node;
}

/** A lazy range of nodes, usually returned by a search */
struct NodeRange
{
   // Refcount stuff!
   mixin CObjectWrapper!(myhtml_collection_t*, data => myhtml_collection_destroy(data) );

   Node opIndex(size_t i)
   {
      return Node(myhtml_collection.list[i]);
   }
   
   size_t length() { if (myhtml_collection) return myhtml_collection.length; return 0; }

   @property Node front() { if (empty) assert(0, "Can't read nodes from an empty collection"); return this[idx]; }
   @property bool empty() { return idx >= length(); }

   void popFront() { idx++; }

   @property Nullable!Node frontOrNull() 
   {
      Nullable!Node ret;
      if (!empty) ret = front;
      return ret;
   } 
private:

   this(myhtml_collection_t* collection)
   {
      myhtml_collection = collection;
      initWrapper(collection);
   }

   myhtml_collection_t* myhtml_collection;

   size_t idx = 0;
}

/** A html tree */
struct Tree
{
   mixin CObjectWrapper!(myhtml_tree_t*, tree => myhtml_tree_destroy(tree));

   /// See: `Node.byXXXX`
   auto byClass(string className) { return document.byClass(className); }

   
   /// Ditto
   auto byId(string id) { return document.byId(id);}


   /// Ditto
   auto byCssSelector(string selector) { return document.byCssSelector(selector); }

   /// Ditto
   auto byTagName(MyHtmlTagId  name) { return document.byTagName(name); }

   /// Ditto
   auto byTagName(string name) { return document.byTagName(name); }

   /// Ditto
   auto byAttributeKey(string name) { return document.byAttributeKey(name); }

   /// Ditto
   auto byAttribute(AttributeSearchType st = AttributeSearchType.exact, Flag!"caseInsensitive" caseInsensitive = No.caseInsensitive)(string key, string value)
   {
      return document.byAttribute!(st, caseInsensitive)(key, value);
   }

   /// The document root
   Nullable!Node document()
   {
      Nullable!Node node;
      auto nodePtr = myhtml_tree_get_document(myhtml_tree);

      if (nodePtr !is null) node = Node(nodePtr);

      return node; 
   }

   /// The html node
   Nullable!Node html()
   {
      Nullable!Node node;
      auto nodePtr = myhtml_tree_get_node_html(myhtml_tree);

      if (nodePtr !is null) node = Node(nodePtr);

      return node; 
   }

   /// The head node
   Nullable!Node head()
   {
      Nullable!Node node;
      auto nodePtr = myhtml_tree_get_node_head(myhtml_tree);

      if (nodePtr !is null) node = Node(nodePtr);

      return node; 
   }

   /// The body node
   Nullable!Node body()
   {
      Nullable!Node node;
      auto nodePtr = myhtml_tree_get_node_body(myhtml_tree);

      if (nodePtr !is null) node = Node(nodePtr);

      return node; 
   }

   /// Return the first node
   Nullable!Node first()
   {
      Nullable!Node node;
      auto nodePtr = myhtml_node_first(myhtml_tree);

      if (nodePtr !is null) node = Node(nodePtr);

      return node; 
   }

   string toString() { Node tmp = first(); return tmp.toString(); }

private:
   
   
   void parse(T)(T html, MyEncodingList encoding = MyEncodingList.default_) if (isSomeString!T)
   {
      auto status = myhtml_parse(myhtml_tree, encoding, html.toStringz, html.length);
      if (MYHTML_FAILED(status)) throw new ArrogantException(status);
   }

   void parseFragment(T)(T html, MyHtmlTagId  wrap = MyHtmlTagId .div, MyEncodingList encoding = MyEncodingList.default_, MyHtmlNamespace ns = MyHtmlNamespace.html) if (isSomeString!T)
   {
      auto status = myhtml_parse_fragment (
         myhtml_tree,
         encoding,
         html.toStringz, html.length,
         wrap,
         ns
      );
      if (MYHTML_FAILED(status)) throw new ArrogantException(status);
   }
   
   this(ref Arrogant parent) { this(parent.myhtml); }
   
   this(myhtml_t* parent)
   {
      myhtml_tree = myhtml_tree_create();
      auto status = myhtml_tree_init(myhtml_tree, parent);
      initWrapper(myhtml_tree);

      if (MYHTML_FAILED(status)) throw new ArrogantException(status);
   }

   @disable this();
   myhtml_tree_t* myhtml_tree;
}

struct Arrogant
{
   mixin CObjectWrapper!(myhtml_t*, myhtml => myhtml_destroy(myhtml));

   ///
   this(MyHtmlOptions options, size_t threadCount = 1, size_t queueSize = 0) 
   { 
      initArrogant(options, threadCount, queueSize);
   }

   /// Parse a html document
   Tree parse(T)(T html, MyEncodingList encoding = MyEncodingList.default_) if (isSomeString!T)
   {
      if (!isInited) initArrogant();
      Tree tree = Tree(myhtml);
      tree.parse(html, encoding);
      return tree;
   }

   /// Parse a html fragment
   Tree parseFragment(T)(T html, MyHtmlTagId  wrap = MyHtmlTagId .div, MyEncodingList encoding = MyEncodingList.default_, MyHtmlNamespace ns = MyHtmlNamespace.html,) if (isSomeString!T)
   {
      if (!isInited) initArrogant();
      Tree tree = Tree(myhtml);
      tree.parseFragment(html, wrap, encoding, ns);
      return tree;
   }

   private:

   void initArrogant(MyHtmlOptions options = MyHtmlOptions.default_, size_t threadCount = 1, size_t queueSize = 0)
   {
      if (isInited) return;
      isInited = true;

      myhtml = myhtml_create(); 
      auto status = myhtml_init(myhtml, options, threadCount, queueSize);
      initWrapper(myhtml);

      if (MYHTML_FAILED(status))
         throw new ArrogantException(status);
   }

   bool isInited = false;
   myhtml_t* myhtml;
}

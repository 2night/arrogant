import std.string : replace, toLower, capitalize;
import std.algorithm : splitter, joiner, map, startsWith, canFind;
import std.stdio: writeln;
import std.conv : to, text;
import std.file : append, remove, exists;

import modest;


string WriteEnum(string name, T, string prefix)() if(is(T == enum)) {
   string ret = "enum " ~ name ~ " {\n";
   string s;

   auto kw = ["default", "switch", "template"];
      
   static foreach(member; __traits(allMembers, T)) {
      s = member.replace(prefix, "");
      s = s.splitter("_").map!(x => x.length == 0?"_":x.toLower.capitalize).joiner().to!string;
      if (s.startsWith("_")) s = text("_", s[1].toLower, s[2 .. $]);
      else s = text(s[0].toLower, s[1..$]);

      if (kw.canFind(s)) s ~= "_";

      ret ~= text(`  `, s, ` = `, T.stringof, `.`, member, ",\n");
   }

   ret ~= "}\n";

   return ret;
}


void main()
{
   if (exists("common.d")) remove("common.d");
   "common.d".append("module arrogant.c.common;\n");
   "common.d".append("import arrogant.c.modest;\n");
   "common.d".append("auto MYHTML_FAILED(T)(auto ref T _status_) { return _status_ != myhtml_status_t.MyHTML_STATUS_OK; }\n");
   "common.d".append(WriteEnum!("MyEncodingList", myencoding_list, "MyENCODING_"));
   "common.d".append(WriteEnum!("MyHtmlTagId", myhtml_tags, "MyHTML_TAG_"));
   "common.d".append(WriteEnum!("MyHtmlOptions", myhtml_options, "MyHTML_OPTIONS_"));
   "common.d".append(WriteEnum!("MyHtmlNamespace", myhtml_namespace, "MyHTML_NAMESPACE_"));
}

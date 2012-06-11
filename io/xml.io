Builder := Object clone
Builder indent := 0

Builder curlyBrackets := method(
  r := Map clone
  call message arguments foreach(arg, r doMessage(arg))
  return r
)

OperatorTable addAssignOperator(":", "atPutNumber")

Map atPutNumber := method(
 self atPut(
  call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
  call evalArgAt(1))
)

Builder forward := method(
 self indent := self indent + 1;
 if(self indent == 1, write("<", call message name, ">")) else(write("\n");for(i,1, indent-1,1, write("\t")); write("<", call message name, ">"));
 call message arguments foreach(
  arg,
  content := self doMessage(arg);
  if(content type == "Sequence", write(content))else(write("\n");for(i,1, indent-1,1, write("\t"));))
 write("</", call message name, ">"); 
 self indent := self indent - 1)

Builder ul({"description":"desc"},ul("old",li("new")),li("Haskell"),li("Clojure"),li("Lua"),li("JavaScript"))

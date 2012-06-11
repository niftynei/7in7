List setSlot("add2d", method(self := self flatten; self foreach(i, if(i type != "Number", return "Exception! Not a 2D Number array!")); return self sum))

List setSlot("add2dNE", method(self := self flatten; self count := 0; self  foreach(i, if(i type == "Number", count := count + i)); return count))

lisst := list(list(1,1,1),list(1,2,3),list(2,2,2,2))

writeln(lisst add2d)
writeln(lisst add2dNE)

lisst atPut(1, "not a number")

writeln(lisst add2d)
writeln(lisst add2dNE)

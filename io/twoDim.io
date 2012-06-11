TwoDim := Object clone

TwoDim dim := method(x,y, self newList := list setSize(y); 
  for(i, 0, y-1, newList atPut(i, list setSize(x))))

TwoDim set := method(x,y,value, 
  holder := newList at(y-1);
  holder atPut(x-1, value);
  newList atPut(y-1, holder))

TwoDim get := method(x,y,
  holder := newList at(y-1);
  return holder at(x-1))

TwoDim transpose := method(in,
  x := in size;
  y := in first size;
  temp := TwoDim dim(x,y);
  for(i, 0, x-1, 
    for(j, 0, y-1, 
      temp at(j) atPut(i, in at(i) at(j))));
  self newList := temp;
  return temp;)

TwoDim dim(2,2)
TwoDim newList println
TwoDim set(1,1,"hello")
TwoDim set(1,2,"goodbye")

writeln(TwoDim get(1,1))
writeln(TwoDim get(1,2))

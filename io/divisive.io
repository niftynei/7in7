Number setSlot("division", Number getSlot("/"))

Number setSlot("/", method(denom, if(denom==0, return 0); return self division(denom)))

for (i, -10, 10, writeln(10 / i))

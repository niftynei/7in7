fib := method(arg, if(arg <= 2, return 1, fib(arg-1) + fib(arg-2)))

for(i, 1, 10, fib(i) println)


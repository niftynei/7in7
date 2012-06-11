def forLoop {
	println("for loop using Java Style Iteration")
	for(i <- 0 until args.length) {
		println(args(i))
	}
}

forLoop

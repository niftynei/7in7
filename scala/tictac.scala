//'input: A[1,2,3],B[1,2,3],C[1,2,3]
//'winning combos: X1=Y2=Z3,X1=X2=X3,A1=B2=C3,A3=B2=C1


def isWinner(grid: Array[Array[Int]]): Boolean =  {
	if (checkCat(grid)) {
		println("Quit chasin your tails kitties!")
		return true
	}
	if (grid(0)(0).toString() != "0" && grid(0)(0) == grid(1)(1) && grid(0)(0) == grid(2)(2)) {
		println(grid(0)(0) + " wins!")
		return true
	}
	if (grid(0)(2).toString() != "0" && grid(0)(2) == grid(1)(1) && grid(1)(1) == grid(2)(0)){
		println(grid(0)(2) + " wins!")
		return true
	}
	for (i <- 0 until 3) {
		if (grid(i)(0).toString() != "0" && grid(i)(0) == grid(i)(1) && grid(i)(0) == grid(i)(2)) {
			println(grid(i)(0) + " wins!")
			return true
		}
		if (grid(0)(i).toString() != "0" && grid(0)(i) == grid(1)(i) && grid(0)(i) == grid(2)(i)) {
			println(grid(0)(i) + " wins!")
			return true
		}
	}
	return false
}

def checkCat(grid: Array[Array[Int]]): Boolean = {
	for (i <- 0 until 3) {
		for (j <- 0 until 3) {
			if (grid(i)(j) == 0) {
				return false
			}
		}
	}
	return true
}
/*
def readInGrid: Array[String] =  {
	var grid = Array(Array(0,0,0), Array(0,0,0), Array(0,0,0))
	println("reading in the grid")
	for (i <- 0 until 3){
		grid(i) = args(i)
		println("Line " + i + " is " + grid(i))
	}
	return grid
}
*/
var grid = Array(Array(0,0,0), Array(0,0,0), Array(0,0,0))

def readIn(player: Int) {
	var input = readLine
	input = input.trim
	var pos1 = input.substring(0,1).toInt
	var pos2 = input.substring(1,2).toInt
	if (grid(pos1)(pos2) == 0) {
		grid(pos1)(pos2) = player
	} else {
		println("That spot has already been played. Try again")
		turn(player)
	}
}

def turn(player: Int) {
	println("It's now player " + player +"'s turn.")
	println("Select an open position:")
	for (i <- 0 until 3) {
		println(grid(i)(0) + "|" + grid(i)(1) + "|" + grid(i)(2))
	}
	readIn(player)
}

def program() {
	var counter = 0
	println("Let's play Tic Tac Toe!")
	do {
		turn(counter % 2 + 1)
		counter += 1
	} while (!isWinner(grid))
	println("Game finished in " + counter + " turns")
}

program

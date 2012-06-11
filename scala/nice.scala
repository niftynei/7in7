class Person(val name:String)

trait Nice{
	def greet() = println("howdy there!")
}

trait Evil{
	def shortChange() = println("robbing your bank, yo!")
} 

class Character(override val name:String) extends Person(name) with Nice with Evil

val flanders = new Character("Ned")
flanders.greet
flanders.shortChange

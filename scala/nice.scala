class Person(val name:String)

trait Nice{
	def greet() = println("howdy there!")
}

trait Evil{
	def beEvil() = println("robbing your bank, yo!")
} 
trait Humane{
	def beHuman() = println("emote")
}

class Character(override val name:String) extends Person(name) with Nice with Evil with Humane

val flanders = new Character("Ned")
flanders.greet
flanders.beEvil
flanders.beHuman

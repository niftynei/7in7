object TrueRing {
	def rule = println("To rule them all")
}
class TrueRing {
	def rule() = println("the one ring")
}

val ring = new TrueRing
ring.rule
TrueRing.rule

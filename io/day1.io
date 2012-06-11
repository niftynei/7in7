Account := Object clone
Account balance := 0
Account withdraw := method(amount, self balance = self balance - amount)
Account deposit := method(amount, self balance = self balance + amount)

Account balance println
Account deposit(20)
Account withdraw(30)
Account balance println

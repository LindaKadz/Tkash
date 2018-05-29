class Account
  attr_accessor :balance

def initialize
  @balance= 1000
end

def withdraw(amount)
	@balance -= amount
	amount
end

def deposit (amount)
	@balance += amount
	amount
end 

end

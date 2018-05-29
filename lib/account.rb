class Account
  attr_accessor :balance

def initialize
  @balance= 1000
end

def withdraw(amount)
	@balance = @balance - amount
	return amount
end

def deposit (amount)
	@balance = @balance + amount
	return amount
end 

end

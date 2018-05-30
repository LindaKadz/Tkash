class Account
  attr_accessor :balance

def initialize
  @balance= 1000
end

def withdraw(amount)
	if (@balance < amount)
   	'You do not have sufficient funds'

  else
    @balance -= amount
    amount
  end
end

def deposit (amount)
	@balance += amount
	amount
end

end

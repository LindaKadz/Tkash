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
    { transactioncode: 'WRXP45P', balance: @balance ,amount: 200 , time: '1447' , status: true }
  end
end

def deposit (amount)
	@balance += amount
	amount
end

end

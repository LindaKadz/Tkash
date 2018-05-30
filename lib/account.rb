class Account
  attr_accessor :balance

def initialize
  @balance= 1000
end

def withdraw(amount)
	if (@balance < amount)
   	{balance: @balance , time: '1538' , status: false}

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

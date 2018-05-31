class Account
  attr_accessor :balance
  AGENT_NUMBERS = [34, 7, 381, 98]

def initialize
  @balance= 1000
end

def withdraw(amount, agent_number)
 return 'Failed, wrong agent number' unless agent_number_exist(agent_number) 

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

def agent_number_exist(agent_number)
   AGENT_NUMBERS.include?agent_number
end

end

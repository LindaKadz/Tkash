require_relative 'lib/account'
input = 0
while input != 3
	puts '=' * 23
	puts '1. Balance'
	puts '2. Withdraw'
	puts '3. deposit'
	input = gets.chomp.to_i

	if input == 1
		puts 'enter pin; '
		pin = gets.chomp.to_i
		transaction =Account, pin 
		puts Balanceputs
		puts
	end

	if input == 2
		puts 'enter agent number: '
		agent_number = gets.chomp.to_i
		puts 'enter amount: '
		amount = gets.chomp.to_i
		puts 'enter pin: '
		pin = gets.chomp.to_i
		transaction =Account.new.withdraw amount, agent_number, pin
		puts transaction
		puts
		puts
	end

	if input == 3
		puts 'enter the ID number; '
		ID number = gets.chomp.to_i
		transaction =Account.new.deposit amount
		put transaction
		puts
		puts
		puts
	end

	
	puts '=' * 23
end

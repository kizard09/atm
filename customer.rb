require_relative 'account'

class Customer

	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def check_balance(account)
		puts "Hello #{@name}! Your balance is: #{account.balance}."
	end

	def deposit(account, amount)
		account.balance += amount
	end

	def withdraw(account, amount)
		if amount > account.balance
			puts "I'm sorry... you po'."
		else
			account.balance -= amount
		end
	end

end
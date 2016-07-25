require_relative 'customer'

class ATM 

	def start
		self.new_account
	end

	def new_account
		puts "Please enter your name to set up an account: "
		name = gets.chomp

		new_customer = Customer.new(name)

		puts "Hello #{new_customer.name}!, What type of account would you like?"
		account_type = gets.chomp 

		puts "How much would you like to start with in your account?"
		amount = gets.chomp.to_i

		my_account = Account.new("Wells Fargo", account_type, amount)

		puts "Thanks for choosing Wells Fargo!"
		self.display_menu(new_customer, my_account)
	end

	def display_menu(customer, account)
		while true
			puts "Welcome #{customer.name}! Choose an option: "
			puts "1. Check your Balance."
			puts "2. Make a Deposit."
			puts "3. Withdraw an amount."
			puts "4. Exit"
			choice = gets.chomp
				case choice
				when "1"
					customer.check_balance(account)
				when "2"
					puts "How much would you like to deposit?"
					amount = gets.chomp.to_i
					customer.deposit(account, amount)
				when "3"
					puts "How much would you like to withdraw?"
					amount = gets.chomp.to_i
					customer.withdraw(account, amount)
				when "4"
					puts "Good bye!"
					break
				end
		end
	end
end

my_atm = ATM.new
my_atm.start
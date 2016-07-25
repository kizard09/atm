class Account

	attr_reader :name, :type
	attr_accessor :balance
	def initialize(name, type, balance)
		@name = name
		@type = type
		@balance = balance
	end
end
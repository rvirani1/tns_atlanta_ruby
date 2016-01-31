class User
	def initialize(un, pw, name)
		@un = un
		@pw = pw
		@name = name
	end

	def summary
		puts "The username is: #{@un}"
		puts "The password is: #{@pw}"
		puts "The user's name is: #{@name}"
	end

	def haunt
		# drop the property square footage by half
		# change the address "111 Spooky Lane"
	end
end
user = User.new("rvirani", "password", "Riaz Virani")
puts user.greet_user

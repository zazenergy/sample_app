class User
	#Creates the getter and setter methods that allow us to retrieve and assign @name and @email
	attr_accessor :name, :email

	def initialize(attributes = {})
		#Attributes has a default value equal to the empty hash, so we can define a user with no email or name
		@name = attributes[:name]
		@email = attributes[:email]
	end
		#Uses the values assigned to @name and @email to build a nicely formatted version of the user's email address
	def formatted_email
		"{@name} <#{@email}>"
	end
end



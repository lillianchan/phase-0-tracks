class Santa
	def initialize(name, gender, ethnicity)
		puts "Initializing Santa instance..."
		@name = name
		@gender = gender
		@ethnicity = ethnicity
	end
	def speak
		puts "#{@name} always says Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies
		puts "#{@name} loves snickerdoodle cookies!"
	end
	def about
		puts "Name: #{@name}"
		puts "Gender: #{@gender}"
		puts "Ethnicity: #{@ethnicity}"
		end
end 
	
	# santa = Santa.new("Jolly", "female", "Unicorn")
	# santa.about
	# santa.speak
	# santa.eat_milk_and_cookies

	# santa = Santa.new("Rosy", "male", "Angel")
	# santa.about
	# santa.speak
	# santa.eat_milk_and_cookies
	
	# we make an array of names to build puppies with
names = ["Jlin", "Dorris", "Steve", "Paula", "Sean", "Eddie"]
gender = ["male", "female", "unicorn"]
ethnicity = ["human", "lifeform"]
age = [1...140]

# we make an empty container for our puppy collection
santas = []

santas = []

puts "Iterating through names list to create santas ..."
names.each do |name, gender, ethnicity|
  puts "Creating a santa named #{name} ..."
  santas << Santa.new(name, gender, ethnicity)
  puts "Santa #{names} is #{gender}, and a very proud #{ethnicity}."
  puts "There are now #{santas.length} Santa instances in the array"
end

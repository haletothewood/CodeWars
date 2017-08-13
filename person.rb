class Person
	def initialize(name, age)
		@name = name
		@age = age
	end

	def name
		@name
	end

	def name=(new_name)
		@name = new_name
	end

	def age
		@age
	end

	BIRTHDAY = "Happy birthday to me!"

	def birthday
		@age = age + 1
	end

end

david = Person.new("David", 34)

puts david.inspect
puts "-" * 5
puts david.age
Person::BIRTHDAY
david.birthday
puts david.age
puts "_" * 5
david.name = "Dave"
puts david.name
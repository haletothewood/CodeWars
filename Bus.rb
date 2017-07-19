class Bus
	def initialize (passengers, capacity, destination) #this means that when you call Bus.new with these parameters the new object inherits them
		@passengers = passengers
		@capacity = capacity
		@destination = destination
	end

	def passengers
		@passengers
	end

	def passengers=(new_passengers)
		@passengers = new_passengers
	end

	def capacity
		@capacity
	end

	def capacity=(new_capacity)
		@capacity = new_capacity
	end

	def destination
		@destination
	end
end

the_432 = Bus.new(23, 32, "Liverpool")
puts the_432.inspect #inspect returns all information about object including unique id
the_437 = Bus.new(9, 32, "Birkenhead")
puts the_437.inspect

puts the_437.passengers
puts the_432.capacity
puts the_437.destination

the_437.passengers = 14
puts the_437.passengers

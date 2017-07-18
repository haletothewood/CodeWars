=begin
Take an array of dog age's and return their equivalent age 
in human years. For the first two years of a dog's life
they age much quicker at 10.5 times the age of a human. After
than they still age quicker but only at a rate of 7 times that
of us humans.
=end

def dog_to_human_age(age)
	age.map {|a| a <= 2 ? a*10.5 : a*7}
end

=begin
The long version would be:
	arr = []
	age.each do |a|
		if a <= 2
			arr << a*10.5
		else
			arr << a*7
		end
	end
	puts arr
end

dog_to_human_age([2, 4, 7, 11, 1, 9])
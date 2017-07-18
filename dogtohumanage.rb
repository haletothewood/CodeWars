def dog_to_human_age(age)
	puts age.map {|a| a <= 2 ? a*10.5 : a*7}
	puts age
end

dog_to_human_age([2, 4, 7, 11, 1, 9])
#The long version
def even_or_odd3(number)
	if number % 2 == 0
		"Even"
	else
		"Odd"
	end
end

#Shorter
def even_or_odd(number)
	number % 2 == 0 ? "Even" : "Odd"
end

#Even shorter
def even_or_odd2(number)
	number.even? ? "Even" : "Odd"
end



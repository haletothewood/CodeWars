=begin
Take an array of celcius temperatures and return the equivalent temperature
in degrees farenheit.
=end

def celsius_to_farenheit(cel)
	puts cel.map {|c| c * (9/5) + 32}
end


celsius_to_farenheit([18, -14, 28, 32, -1])


=begin
Take a hash of corresponding days and temperatures in degrees celcius
and return a string that gives the day and converted temperature
in degrees farenheit
=end

def celcius
	var = { "Monday" => 12,
	"Tuesday" => -14,
	"Wednesday" => 28,
	"Thursday" => 32,
	"Friday" => -1 }
	var.each do |day, cel|
	puts "On #{day} the temperature was #{cel*(9/5)+32} degrees farenheit"
	end
end

celcius


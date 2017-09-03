=begin
Is every value in the array an array?

This should only test the second array dimension of the array. The values of the nested arrays don't have to be arrays.

Examples:

[[1],[2]] => true
['1','2'] => false
[{1:1},{2:2}] => false
=end

def arrCheck(value)
	arr = []
	value.each do |x|
		if x.is_a?(Array) 
    		arr << true
		else
    		return false
		end
	end
	arr[0]
end

# refactoring

def arrCheck2(value)
  value.all? {|n| n.is_a?(Array)} #.all? returns true if all elements apply
end

puts arrCheck([[1,2,3], [4,5,6]])
puts arrCheck2(["Hello", ["Hello", "You"]])


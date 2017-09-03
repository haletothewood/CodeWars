=begin
#To square(root) or not to square(root)

Write a method, that will get an integer array as parameter 
and will process every number from this array.
Return a new array with processing every number of the 
input-array like this:

If the number has an integer square root, take this, otherwise 
square the number.

[4,3,9,7,2,1] -> [2,9,3,49,4,1]
The input array will always contain only positive numbers 
and will never be empty or null.

The input array should not be modified!
=end

def square_or_square_root(arr)
new_arr = []
  arr.each do |num| 
    if Math.sqrt(num) % 1 == 0 
     new_arr << Math.sqrt(num).to_i
     else 
     new_arr << num*num
    end
  end
  new_arr
end

# refactoring

def square_or_square_root(arr)
  arr.map { |n| 
    s = Math.sqrt(n)
    s % 1 == 0 ? s.to_i : n * n
  }
end
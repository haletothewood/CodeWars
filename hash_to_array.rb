=begin
Convert a hash into an array. Nothing more, Nothing less.

{name: 'Jeremy', age: 24, role: 'Software Engineer'}
should be converted into

[["name", "Jeremy"], ["age", 24], ["role", "Software Engineer"]]
Good Luck!
=end

def convert_hash_to_array(hash)
  arr = hash.to_a
  arr.each do |x|
    if x[0].is_a? Symbol
      x[0] = x[0].to_s
    end
  end  
  arr  
end

# refactoring

def convert_hash_to_array2(hash)
  hash.map {|k,v| [k.to_s, v]}
end

convert_hash_to_array({name: 'Jeremy', age: 24, role: 'Software Engineer'})
convert_hash_to_array2({name: 'David', age: 34, role: 'Junior Software Engineer'})


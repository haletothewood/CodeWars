=begin
A family of kookaburras are in my backyard.

I can't see them all, but I can hear them!

How many kookaburras are there?

Hint
The trick to counting kookaburras is to listen carefully

The males go HaHaHa...
The females go hahaha...
And they always alternate male/female
=end

def kooka_counter(laughing)
count = 0
arr = []
kooka = laughing.split('')
  kooka.each do |x|
    if x == 'h' or x == 'H'
      arr << x
      if count == 0
        count += 1
      elsif 
        arr[-2] == x.swapcase
        count += 1
      end
    end
  end
  count
end

# refactoring

def kooka_counter2(laughing)
  laughing.delete("a").squeeze.length # deleting a's and removing duplicates
end

puts kooka_counter("hahahahaha")
puts kooka_counter("hahahahahaHaHaHahaha")
puts kooka_counter("")
puts 
puts kooka_counter2("hahahahaha")
puts kooka_counter2("hahahahahaHaHaHahaha")
puts kooka_counter2("")

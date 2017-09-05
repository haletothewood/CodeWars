def longest_palindrome(s)
  arr = s.downcase.chars # converts to lowercase and an array
  s.length.downto(1) do |n| # starts with entire array then one less etc etc
    pal = arr.each_cons(n).find { |b| b == b.reverse } # each_consecutive n length of groupings - find palindrome
    return pal.join.length if pal 
  end
end


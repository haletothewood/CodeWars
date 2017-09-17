=begin
Give the summation of all even numbers in a Fibonacci
sequence up to, but not including, the maximum value.

The Fibonacci sequence is a series of numbers where t
he next value is the addition of the previous two values.
The series starts with 0 and 1:

0 1 1 2 3 5 8 13 21...
=end

def even_fib(m)
  arr = [0,1]
  while arr[-1] < m
    arr << arr[-1] + arr[-2]
  end
  arr[0...-1].select {|x| x.even?}.inject(:+)
end

even_fib(100)

def even_fib2(m)
  sum = 0
  a, b = 0, 1
  while b < m
    sum += b if b.even?
    a, b = b, a + b
  end
  sum
end

even_fib2(100)

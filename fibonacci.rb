def even_fib(m)
  p m
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

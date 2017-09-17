def even_fib(m)
  p m
  arr = [0,1]
  while arr[-1] < m
    arr << arr[-1] + arr[-2]
  end
  time1 = Time.now
  arr[0...-1].select {|x| x.even?}.inject(:+)
  p time = Time.now - time1
end

even_fib(100)

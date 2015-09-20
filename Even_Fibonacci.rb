def fib
  first, second, sum = 1,2,0
  while second < 4000000
    sum += second if second.even?
    first, second = second, first + second
  end
  puts sum
end

puts fib

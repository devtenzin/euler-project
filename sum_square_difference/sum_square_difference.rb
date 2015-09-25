def sum_square_difference
  sum_square = 0
  (1..100).each do |number|
    sum_square += number**2  
  end

  square_sum = 0
  (1..100).each do |number|
    square_sum += number
  end



square_sum = square_sum ** 2

return square_sum - sum_square

end

#one-liner
#(1..100).reduce(:+)**2 - (1..100).map { |n| n**2 }.reduce(:+)
def power_digit_sum
  
  num = 1
  1000.times { |x| num *= 2 }

  list = num.to_s.split''

  sum = 0
  list.map! { |x| x.to_i}.inject(:+)
  
end

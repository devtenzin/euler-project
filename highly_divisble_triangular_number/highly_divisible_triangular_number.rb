def highly_divisible_triangular_number
  temp = 0
  x = 0
  loop do
    x += 1
    temp += x
    triangle_num_list = []
    (1..temp).each do |num|
      triangle_num_list.push(num) if temp % num == 0
    end
  puts triangle_num_list[-1] if triangle_num_list.length > 500
  break if triangle_num_list.length > 500
  end


end

highly_divisible_triangular_number


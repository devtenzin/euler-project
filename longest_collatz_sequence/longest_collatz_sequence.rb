def longest_collatz_sequence
  
  def collatz_numbers(num)
    collatz_list = [num]
    loop do 
      if num % 2 == 0
        num = num/2
        collatz_list.push(num)
      else
        num = 3 * num + 1
        collatz_list.push(num)
      end
      return collatz_list.length if num <= 1
    end
  end 
  
  max_chain = 0
  max_starting_num = 0
  (0..1000000).each do |x|
    if collatz_numbers(x) >= max_chain
      max_chain = collatz_numbers(x)
      max_starting_num = x
    end
    
    
  end
  return max_starting_num
  
  
end
longest_collatz_sequence

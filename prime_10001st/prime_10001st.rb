def is_prime(num)
  return false if num <= 1
  Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
  true
end




def prime_10001st(counter)

 list1 = []
 number = 0
 loop do
 number += 1
  if is_prime(number)
   list1.push(number)
   if list1.length == counter
    return number
   end
  end
 end




end

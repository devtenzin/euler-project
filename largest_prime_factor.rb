=begin

The prime factors of 13195 are 5, 7, 13 and 29. 

What is the largest prime factor of the number 600851475143?

=end

def prime_checker(number)
    return true if number == 2
    (2..number).each do |x|
        if number % x == 0
            return false
        end
            if x == number - 1
                return true
        end
      end
end

def largest_prime_factor(number)
list_1 = []
number.downto(2).each do |x|
  if prime_checker(x) == true && (number % x == 0)
  list_1.push(x)
  print list_1.max
  end
end
end


#def largest_prime_factor(number)
#list1.each do |x|
#new_list = []
#if number % x == 0
#new_list.push(x)
#puts new_list[0]
#end
#end
#end
#=end

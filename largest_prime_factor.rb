=begin

The prime factors of 13195 are 5, 7, 13 and 29. 

What is the largest prime factor of the number 600851475143?

=end

=begin

def prime(number)
    return true if number == 2
    (2..number/2).each do |x|
        if number % x == 0
            return false
        end
            if x == number - 1
                return true
        end
      end
end




def largest_prime_factor(number)
(number/2).downto(2).each do |x|
  if number % x == 0 
    if prime(x) 
    return  x
    end
  end
end
end

=end

def big_prime(x)
  prime = x
  (2..Math.sqrt(x).to_i).each do |i|
    break if prime <= i
    prime /= i while (prime > i && prime % i == 0)
  end
  prime
end

s = Time.new
puts big_prime(600851475143)
puts "elapsed: #{Time.new-s}"

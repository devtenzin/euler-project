=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

def max_palin


list1 = []
99.downto(1).each do |x|
  99.downto(1).each do |y|
  product = x * y
  if product.to_s == product.to_s.reverse 
   list1.push(product)
  end
  end
end
return list1.max

end

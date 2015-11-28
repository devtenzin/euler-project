def summation_of_primes(n)
  num = (3...n).select { |x| x % 2 != 0 && x % 3 != 0 }.inject(0) {|a,b| a+=b}
  final_num = num + 5
  puts final_num
end

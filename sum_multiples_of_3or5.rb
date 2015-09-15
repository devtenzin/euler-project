=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=end

puts (0..1000).select {|n| n%3==0 || n%5==0}.inject(0) {|s,n| s+=n}


=begin

SOLUTION explained!
We first iterate over 1 to 1000 with .select method and select only the numbers that are multiples of 3 or 5. Then we call the .inject method to add all the numbers. 

>>How "".inject" method works
For example, let's say we have an array of numbers.

x = [3, 9, 3, 2] #lets call it x

Now let's call the .inject method on the array.

x.inject[0] {|result, element| result + element} => 17

It takes two parameters and a block. The argument we called on .inject (which is 0) is the first parameter and the first element of the array (which is 3) is our second parameter. 

So 0 + 3=> 3,
Now, the 2nd time it runs, the result is 3!!! Not 0!!!

So, now it wil be 3 + 9 = 12,

Similarly, 12 + 3 = 15, 

Finally, 15 + 2 = 17

And that's how we get 17. 



Likewise in the problem, our parameter is basically all the multiples of 3 or 5 upto 1000. And we run the .inject method on that. 


The magic of the .inject!!!


=end


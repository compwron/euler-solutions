# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without 
# any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# 1.upto(9).each { |i| 
# 	if i %
# }

# big = 1
# (1..20).each {|i| big = big * i}
# puts big

# def divisible n
# 	d = true
# 	1.upto(20).each {|j| 
# 		(n % j == 0) ? 'aww' : d = false
# 	}
# 	d
# end

# puts divisible big

# got from http://johnnycoder.com/blog/2010/07/05/project-euler-5-ruby/ 
# not sure what it does exactly. :/ 
def greatest_common_demoninator(a, b)
  if (b == 0)
    a
  else
    greatest_common_demoninator(b, a%b)
  end
end
 
def lcm(a, b)
  (a / greatest_common_demoninator(a, b)) * b
end
 
p (1..20).inject{ |x,y| lcm(x, y)}
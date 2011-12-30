# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

require 'mathn'
def largest_prime_factor_l(n)
  Prime.prime_division(n).last[0]
end

puts largest_prime_factor_l 600851475143

# http://recurial.com/programming/prime-factors-in-ruby/

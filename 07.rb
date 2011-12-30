# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

require 'mathn'

how_many, a = 0, 0
 Prime.each(999999) do |prime|
   how_many += 1
   how_many == 10_001 ? a = prime : a
 end
 puts a

# not mine
# require 'mathn'
# primes = Prime.new
# 10_000.times { primes.next }
# puts "Prime is #{ primes.next }."
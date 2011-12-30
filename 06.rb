# The sum of the squares of the first ten natural numbers is,

# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)^2 = 55^2 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def square_of_sum n
	n.downto(1).inject(:+) ** 2
end

def sum_of_square n
	sum = 0 ;	n.downto(1).each { |i| sum += i ** 2 } ; sum
end

puts (square_of_sum 100) - (sum_of_square 100)

# 145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

# Find the sum of all numbers which are equal to the sum of the factorial of their digits.

# Note: as 1! = 1 and 2! = 2 are not sums they are not included.

# http://johnnycoder.com/blog/2010/08/10/project-euler-34-ruby/

def factorial j
  (1..j).reduce(1, :*)
end
answer = 0 
(3..99999).each do |i|
  sum_factorials = i.to_s.chars.inject(0){|sum, char| sum + (factorial char.to_i)}
  answer += i if (i == sum_factorials)
end
puts answer

# Surprisingly there are only three numbers that can be written as the sum of fourth powers of their digits:

# 1634 = 14 + 64 + 34 + 44
# 8208 = 84 + 24 + 04 + 84
# 9474 = 94 + 44 + 74 + 44
# As 1 = 14 is not a sum it is not included.

# The sum of these numbers is 1634 + 8208 + 9474 = 19316.

# Find the sum of all the numbers that can be written as the sum of fifth powers of their digits.

ans = 0
for t in 2..999999 do
	sum = 0
	for i in 0..9 do
		sum += t.to_s[i].to_i ** 5
	end
	ans += sum if sum == t
end
puts ans
# 443839 is correct

# someone else's ruby 1-liner
# p (2...1_000_000).select { |e| e == e.to_s.chars.map(){|a| a.to_i**5}.inject(:+) }.inject(:+)

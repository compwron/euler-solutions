# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

answer = []
(1..1000).each { |a|
	(1..1000).each { |b|
		(1..1000).each { |c|
			if (a ** 2 + b ** 2 == c ** 2) && (a + b + c == 1000)
				answer << [a, b, c, a * b * c]
			end
		}
	}
}
puts answer.inspect

# not mine
# n = 1000
# a = (1..n / 2).to_a.find { |a|
#   (n * (n / 2 - a) % (n - a)).zero?
# }
# b = n * (n / 2 - a) / (n - a)
# puts "Product is #{a * b * (n - a - b)}."
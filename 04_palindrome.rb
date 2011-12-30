# A palindromic number reads the same both ways. The largest palindrome made from the 
# product of two 2-digit numbers is 9009 = 91 99.

# Find the largest palindrome made from the product of two 3-digit numbers.


def is_palindrome num 
	num.to_s == num.to_s.reverse
end

a = [0, 0, 0]
999.downto(900).each { |o|
		999.downto(900).each { |i|
			 ((is_palindrome o * i)  && ((o * i) > a[2])) ? a = [o, i, o * i] : a
		}
}
puts a.inspect

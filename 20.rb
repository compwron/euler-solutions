# n! means n  (n  1)  ...  3  2  1

# For example, 10! = 10  9  ...  3  2  1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

# Find the sum of the digits in the number 100!

target = 100.downto(1).inject(:*)
puts (0..Math.log10(target).to_i).map { |digit_index|
   (target / 10 ** digit_index % 10)
 }.inject(0, &:+)
# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

# puts (2..999999).map { |target|
#  sum = (0..Math.log10(target).to_i).map { |digit_index|
#    (target / 10 ** digit_index % 10) ** 5
#  }.inject(0, &:+)
#  sum == target ? sum : 0
# }.inject(0, &:+)

# big = 2 ** num

target = 2 ** 1000
puts target
puts (0..Math.log10(target).to_i).map { |digit_index|
   (target / 10 ** digit_index % 10)
 }.inject(0, &:+)

 #notmine
 # p (2**1000).to_s.split('').map{|i|i.to_i}.inject{|s,i|s+i}
puts (2..999999).map { |target|
 sum = (0..Math.log10(target).to_i).map { |digit_index|
   (target / 10 ** digit_index % 10) ** 5
 }.inject(0, &:+)
 sum == target ? sum : 0
}.inject(0, &:+)


# ans = 0
# for t in 2..999999 do
#        sum = 0
#        for i in 0..9 do
#                sum += t.to_s[i].to_i ** 5
#        end
#        ans += sum if sum == t
# end
# puts ans
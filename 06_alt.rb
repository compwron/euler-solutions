require 'mathn'
n = 100
puts "Difference is #{ (n * (n**2 - 1) * (n / 4 + 1 / 6)).abs }."





sum, variable = 0, 0
100.downto(1) { |x| sum+=x; variable += (x*x) }
sum_square = sum*sum
puts sum_square - variable



(1..100).inject(0) { |s,n| s + n }**2 - (1..100).inject(0) { |s,n| s + (n**2) }


a=(1..100).inject([0,0]) { |r,n| [r[0]+n, r[1]+n**2] }; a[0]**2 - a[1]


p ((1..100).inject(0) { |p, x| p + x } ** 2 ) - (1..100).inject(0) { |s, x| s += x ** 2 }


range = 1..100
sum_of_squares = range.inject(0) { |sum, i| sum + i ** 2 }
square_of_sum  = range.inject(0) { |sum, i| sum + i } ** 2
puts square_of_sum - sum_of_squares



for i in 1..100
n=n+(i*i)
q=q+i
end
puts n
puts q
puts "The difference is:"
puts ((q*q) - n)
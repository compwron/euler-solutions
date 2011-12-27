TOP = 4000000

a = 1
b = 1
sum = 0

(1..TOP).each do |i|
  c = a + b
  if c > TOP 
    puts sum 
    puts "done!"
    return
  end
  a = b
  b = c
  if c%2 == 0 then sum = sum + c end
end

puts sum
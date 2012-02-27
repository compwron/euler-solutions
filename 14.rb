def seq s, result=[]
	if s != 1
		(s % 2) == 0 ? seq(s / 2, result << s) : seq(3 * s + 1, result << s)
	else
		result << s
	end
end

puts 999_999.downto(2).map {|num|
	seq(num)
}.max_by {|sequence| sequence.length}.first

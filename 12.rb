# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

class Integer # this method from http://rosettacode.org/wiki/Factors_of_an_integer#Ruby
  def factors()
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i| 
      f << i
      f << self/i unless i == self/i
      f
    end.sort
  end
end

# make this store previous values instead of recursing every time





def tri n, series=[]
	if n != 1
	  tri(n - 1, series << n)
	else
		series << n
	end
end

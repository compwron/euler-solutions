# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
# 1, 2, 3, 4, 5, 6, 7, 8, 9, ...

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
@stored_tri = [1, 3, 6]

def tri n
  if @stored_tri.length < n 
    @stored_tri << (@stored_tri.last + @stored_tri.length + 1)
    tri(n)
  else
    @stored_tri[n - 1]
  end
end


puts (0..100000).map {|n| 
  tri(n).factors.count
}.max

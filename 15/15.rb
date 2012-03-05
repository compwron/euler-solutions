# Starting in the top left corner of a 2x2 grid, there are 6 routes (without backtracking) to the bottom right corner.
# How many routes are there through a 20x20 grid?

class Grid
	attr_accessor :side
	
	 def initialize side
    self.side = side
  end

	def paths
		side ** 2 + side
	end
end


00
00

000
000
000

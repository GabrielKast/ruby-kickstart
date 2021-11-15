# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!! IT'S A TOUGH ONE :)

# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]


class Limits
  attr_accessor :left, :top, :right, :bottom
  def initialize(width, height)
    @left, @top = 0, 0
    @right, @bottom = width-1, height-1
  end

  def finished?
    @left==@right && @top==@bottom
  end

  def reached? x, y, dx, dy
    (dx == 1 && x+dx>right) ||
      (dx == -1 && x+dx<left) ||
      (dy == 1 && y+dy>bottom) ||
      (dy == -1 && y+dy<top)
  end

  def turn x, y, dx, dy
    case [dx, dy]
    when [1, 0]
      self.top = y + 1
      dx, dy = 0, 1
    when [0, 1]
      self.right = x - 1
      dx, dy = -1, 0
    when [-1, 0]
      self.bottom = y - 1
      dx, dy = 0, -1
    when [0, -1]
      self.left = x + 1
      dx, dy = 1, 0
    end
  end

  def to_s
    "@left=#{@left}, @top=#{@top}, @right=#{@right}, @bottom=#{@bottom}"
  end
end

def spiral_access two_d
  return [] if two_d==[[]]
  result = []
  limit = Limits.new(two_d[0].length, two_d.length)
  fill_result(two_d, result, 0, 0, 1, 0, limit)
end

def fill_result(two_d, result, x, y, dx, dy, limit)
  result << two_d[y][x]

  return result if limit.finished?
  # Add this test if you want to debug an infinite loop.
  #return result if result.length>27 

  if limit.reached?(x, y, dx, dy)
    dx, dy = limit.turn(x, y, dx, dy)
  end
  x, y = x + dx, y + dy
  fill_result(two_d, result, x, y, dx, dy, limit)
end


two_d = [
  [ 1,  2,  3,  4, 5],
  [16, 17, 18, 19, 6],
  [15, 24, 25, 20, 7],
  [14, 23, 22, 21, 8],
  [13, 12, 11, 10, 9],
]

two_d2 = [
  [ 1,  2,  3, 4],
  [12, 13, 14, 5],
  [11, 16, 15, 6],
  [10,  9,  8, 7],
]

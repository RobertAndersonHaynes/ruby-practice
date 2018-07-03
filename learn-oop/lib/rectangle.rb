require 'pry'

class Rectangle
  attr_reader :length, :width
  attr_accessor :x, :y

  def initialize(length, width, x = 0, y = 0)
    @length = length
    @width = width
    @x = x
    @y = y
  end

  def area
    @length * @width
  end

  def diagonal
    Math::sqrt(@length ** 2 + @width ** 2)
  end

  def move_right
    result = @x + 1
    @x = result
  end

  def move_up
    result = @y + 1
    @y = result
  end

  def move_left
    result = @x - 1
    @x = result
  end

  def move_down
    result = @y - 1
    @y = result
  end
end

# Write a class called Square that inherits from Rectangle
class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(length_of_size)
    super(length_of_size, length_of_size)
  end
end


square = Square.new(5)
puts "area of square = #{square.area}"
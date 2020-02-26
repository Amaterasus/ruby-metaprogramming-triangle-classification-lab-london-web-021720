class Triangle
  # write code here
  attr_reader :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    if @first <= 0 || @second <= 0 || @third <= 0 || @first + @second <= @third || @second + @third <= @first || @third + @first <= @second
      raise TriangleError
    end
    if @first == @second && @first == @third
      :equilateral
    elsif @first == @second || @second == @third || @first == @third
      :isosceles
    else
      :scalene
    end
  end


  class TriangleError < StandardError
  end
end

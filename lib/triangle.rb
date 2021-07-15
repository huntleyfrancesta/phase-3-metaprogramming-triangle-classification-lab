class Triangle
  def initialize(a, b, c)
    @sides = [a, b, c].sort
    valid?
  end

  def valid?
    if @sides.any?{|side| side <= 0} || @sides[2] >= @sides[0] + @sides[1]
      raise TriangleError
    end
  end

  def kind
    if @sides.uniq.length == 3
      :scalene
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :equilateral
    end
  end

  class TriangleError < StandardError
  end
end
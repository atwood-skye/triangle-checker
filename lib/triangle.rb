class Triangle
  define_method(:initialize) do |side_one, side_two, side_three|
    @side1 = side_one
    @side2 = side_two
    @side3 = side_three
  end
  define_method(:triangle_type) do
    if @side1 + @side2 < @side3 || @side2 + @side3 < @side1 || @side1 + @side3 < @side2
      false
    elsif @side1.==(@side2) && @side2.==(@side3)
      "equilateral"
    elsif @side1.==(@side2) && @side1.!=(@side3) || @side1.==(@side3) && @side1.!=(@side2) || @side2.==(@side3) && @side1.!=(@side2)
      "isosceles"
    elsif @side1.!=(@side2) && @side2.!=(@side3) && @side1.!=(@side3)
      "scalene"
    end
  end
end

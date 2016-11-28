class Triangle
  define_method(:initialize) do |side_one, side_two, side_three|
    @side1 = side_one
    @side2 = side_two
    @side3 = side_three
  end

  define_method(:equilateral?) do
    if @side1.==(@side2) && @side2.==(@side3)
      true
    end
  end

  define_method(:isosceles?) do
    if @side1.==(@side2) && @side1.!=(@side3) || @side1.==(@side3) && @side1.!=(@side2) || @side2.==(@side3) && @side1.!=(@side2)
      true
    end
  end



end

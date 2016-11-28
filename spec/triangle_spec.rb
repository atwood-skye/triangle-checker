require('rspec')
require('pry')
require('triangle.rb')

describe(Triangle) do
  describe("#triangle_type") do
    it("checks if it is a triangle") do
      new_triangle = Triangle.new(8, 4, 2)
      expect(new_triangle.triangle_type()).to(eq(false))
    end
    it("checks if no sides are equal") do
      new_triangle = Triangle.new(8, 5, 4)
      expect(new_triangle.triangle_type()).to(eq("scalene"))
    end
    it("checks if two sides are equal") do
      new_triangle = Triangle.new(8, 5, 5)
      expect(new_triangle.triangle_type()).to(eq("isosceles"))
    end
    it("checks if all three numbers are the same") do
      new_triangle = Triangle.new(5, 5, 5)
      expect(new_triangle.triangle_type()).to(eq("equilateral"))
    end
  end
end

require('rspec')
require('pry')
require('triangle.rb')

describe(Triangle) do
  describe("#equilateral?") do
    it("checks if all three numbers are the same") do
      new_triangle = Triangle.new(5, 5, 5)
      expect(new_triangle.equilateral?()).to(eq(true))
    end
  end
  describe("#isosceles?") do
    it("checks if two sides are equal") do
      new_triangle = Triangle.new(8, 5, 5)
      expect(new_triangle.isosceles?()).to(eq(true))
    end
  end
  describe("#scalene?") do
    it("checks if no sides are equal") do
      new_triangle = Triangle.new(8, 5, 4)
      expect(new_triangle.scalene?()).to(eq(true))
    end
  end
  describe("#is_triangle?") do
    it("checks if it is a triangle") do
      new_triangle = Triangle.new(8, 4, 2)
      expect(new_triangle.is_triangle?()).to(eq(false))
    end
  end
end

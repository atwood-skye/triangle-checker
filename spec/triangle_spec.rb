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
end

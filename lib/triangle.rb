class Triangle
  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two 
    @side_three = side_three
  end 

  def illegal? 
    side_one <= 0 || side_two <=0 || side_three <= 0 || 
    side_one + side_two <= side_three || 
    side_two + side_three <= side_one || 
    side_one + side_three <= side_two
  end 

  def equilateral? 
    side_one == side_two && side_two == side_three
  end 

  def isosceles?
    side_one == side_two || side_two == side_three || side_one == side_three
  end 


  def kind 
    if illegal?
      raise TriangleError
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles 
    else 
      :scalene
    end 
  end 

  class TriangleError < StandardError
   end
end 
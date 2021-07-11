class Triangle
  attr_accessor :sd_b, :sd_a, :sd_c

  def initialize(sd_a, sd_b, sd_c)
    @sd_a = sd_a
    @sd_b = sd_b
    @sd_c = sd_c
  end

  def kind 
    if not @sd_a + @sd_b > @sd_c && @sd_a + @sd_c > @sd_b && @sd_b + @sd_c > @sd_a 
      raise TriangleError
    end
    if [@sd_a, @sd_b, @sd_c].any? {|side|side <=0}
      raise TriangleError
    end
    if @sd_a == @sd_b && @sd_b == sd_c
      :equilateral
    elsif @sd_a == @sd_b || @sd_a == @sd_c || @sd_b == @sd_c
      :isosceles
    else 
      :scalene
    end 
  end

  class TriangleError < StandardError
  
  end

end



# puts"pick side a len"
# a = gets.chomp
# puts"side b"
# b = gets.chomp
# puts"side c"
# c = gets.chomp

# new_triangle = Triangle.new(a, b, c)
# new_triangle.kind

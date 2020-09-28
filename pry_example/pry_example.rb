require 'pry'
require 'pry-byebug'

# This class stores a value when initialized, and provides a multiply method
# to multiply a given value by the initial value
class SimpleTest
  def initialize(v)
    binding.pry
    @v = v
  end

  def multiply m
    @v * m
  end
end

binding.pry

t = SimpleTest.new(3)
t.multiply 7


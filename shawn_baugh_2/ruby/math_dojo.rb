class MathDojo
  # your code here
  attr_reader :result
  def initialize
      @result = 0
  end
  def add(*value)
      @result += value.flatten.reduce(:+)
      p @result.inspect
    #  @result = value + result
      self
  end
  def subtract(*value)
      @result -= value.flatten.reduce(:+)
      p @result.inspect
      self
  end
end
challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15
# b  = MathDojo.new.add(5,5,5).subtract(1,2,3,4,5).result

class Computation
  include Comparable
  
  def initialize(&block)
    @action = block
  end
  
  def result
    @result ||= @action.call
  end
  
  def <=>(other)
    return 0 if result == other.result
    return 1 if result > other.result
    return -1 if result < other.result
  end
end

a = Computation.new { 1 + 1 }
b = Computation.new { 4 * 5 }
c = Computation.new { -3 }

p a < b
p a <= b
p b > c
p b >= c
p a == b


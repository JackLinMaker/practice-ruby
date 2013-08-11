moudle Comparable
 def ==(other)
   (self <=> other) == 0
 end
 
 def <(other)
   (self <=> other) == -1
 end
 
 def <=(other)
   self < other || self == other
 end
 
 def >(other)
   (self <=> other) == 1
 end
 
 def >=(other)
   self > other || self == other
 end
end

class Computation
  include Comparable
  
  def initialize(&block)
    @action = block
  end
  
  def result
    @result ||= @action.call
  end
  
  def <=>(other)
    result <=> other.result
  end
  
end
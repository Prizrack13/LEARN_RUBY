class Timer
  attr_accessor :seconds  
  
  def initialize
    @seconds = 0
  end  
  
  def time_string
    "#{padded(seconds / 3600)}:#{padded(seconds / 60 % 60)}:#{padded(seconds % 60)}"
  end  
  
  def padded(s)
    "#{'0' if s < 10}#{s}"
  end  
end

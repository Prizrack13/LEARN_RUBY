class Array
  def sum
    self.inject(0, :+)
  end

  def square
    self.collect{ |i| i** 2 }
  end

  def square!
    self.collect!{ |i| i** 2 }
  end    
end

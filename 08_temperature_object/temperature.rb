class Temperature
  def initialize(hsh = {})
    @f, @c = hsh[:f], hsh[:c]
  end
  
  def in_fahrenheit
    @f ? @f : ctof(@c)
  end
  
  def in_celsius
    @c ? @c : ftoc(@f)
  end

  private

  def ftoc(f)
    (f - 32) * 5.0 / 9.0
  end

  def ctof(c)
    32 + c * 9.0 / 5.0
  end
  class << self
    def from_celsius(c)
      Celsius.new(c)
    end
  
    def from_fahrenheit(f)
      Fahrenheit.new(f)
    end
  end
end

class Celsius < Temperature
  def initialize(c = 0)
    super(c: c)
  end
end

class Fahrenheit < Temperature
  def initialize(f = 0)
    super(f: f)
  end
end

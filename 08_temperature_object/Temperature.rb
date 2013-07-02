class Temperature
	def initialize(hsh = {})
	  if hsh[:c]
	  	@c=hsh[:c]
	  else 
      if hsh[:f]
        @f=hsh[:f]
      else
        @f=0
        @c=0
      end
	  end
	end
	
	def in_fahrenheit
		@f ? @f : ctof(@c)
	end
	
	def in_celsius
		@c ? @c : ftoc(@f)
	end
	
	def ftoc(f)
		(f-32)*5.0/9.0
	end

	def ctof(c)
		32+c*9.0/5.0
	end
	
	def self.from_celsius(c)
		Celsius.new(c)
	end
	
	def self.from_fahrenheit(f)
		Fahrenheit.new(f)
	end
end


class Celsius < Temperature
	def initialize(c=0)
		super(:c=>c)
	end
end

class Fahrenheit < Temperature
	def initialize(f=0)
		super(:f=>f)
	end
end
class Timer
	attr_accessor :seconds  
	
	def initialize
		@seconds = 0
	end	
	
	def time_string
		"#{padded(seconds/3600)}:#{padded(seconds/60%60)}:#{padded(seconds%60)}"
	end	
	
	def padded(s)
		s<10 ? "0"+s.to_s : s.to_s
	end	
end
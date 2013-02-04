class RPNCalculator
	
	def initialize
		@st = []
	end	
		
	def push(a)
		@st.push(a)
	end	
	
	def value
		@st.last
	end	
	
	def plus
		dop
		@st.push(@st.pop+@st.pop)
	end	
	
	def times
		dop
		@st.push(@st.pop*@st.pop)
	end	
		
	def minus
		dop
		@st.push(@st.pop-@st.pop)
	end	
	
	def divide
		dop
		@st.push(@st.pop.to_f/@st.pop.to_f)
	end	
	
	def tokens(s)
		s.split(" ").collect! {|x| ACT.include?(x)? x.intern : x.to_f }
	end	
	
	def evaluate(s)
		tokens(s).each{|x| exe(x)}
		self.value
	end	

	private 
	ACT = %w{+ - * /}
	
	def exe(x)
		if x.class==Symbol
			case x
			   when :+ then self.plus
			   when :- then self.minus
			   when :* then self.times
			   when :/ then self.divide
			end
		else 
			push(x)
		end
	end
	
	def dop
		if @st.size<2 
			raise "calculator is empty"
		end
	end
	
end
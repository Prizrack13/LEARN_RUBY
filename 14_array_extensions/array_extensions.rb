class Array
	def sum
		ret=0
	    each_index do |i|
		  ret+=self[i]
		end
		ret
	end	
	def square
		ret=[]
	    each_index do |i|
		  ret.push(self[i]**2)
		end
		ret
	end		
	def square!
	    each_index do |i|
		  self[i]=self[i]**2
		end
	end		
end
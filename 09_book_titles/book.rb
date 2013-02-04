class Book

	attr_accessor :title  
	
	def initialize
		@title =""
	end	

	def title=(newtitle)
	   @title = titleize(newtitle) 
	end  
		
	private
	LITTLE_WORDS = %w{a an and as at but by en for if in of on or the to v v. via vs vs. over}
	
	def titleize(a)
		ret=""
		mas=a.downcase.split(" ")
		mas.collect!{|x| LITTLE_WORDS.include?(x) ? x : x.capitalize }
		if !mas.empty?
			mas[0]=mas.first.capitalize
		end
		mas.join(" ")
	end
end
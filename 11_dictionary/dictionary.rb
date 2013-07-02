class Dictionary
	attr_accessor :entries  
	
	def initialize
		@entries = {}
	end	
	
	def add(hsh)
		hsh.class==Hash ? @entries.merge!(hsh) : @entries.merge!(hsh=>nil)
	end	
	
	def keywords
		@entries.keys.sort 
	end	
	
	def include?(k)
		@entries.has_key?(k)
	end	
	
	def find(key)
		@entries.select {|k,v| k.start_with?(key)}
  end

	def printable
		ret=[]
		@entries.sort.each {|key, value| ret<<"[#{key}] \"#{value}\"" }
		ret.join("\n")
	end
end
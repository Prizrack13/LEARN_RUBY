class XmlDocument
	BR=2
	def initialize(xm=false)
		@xm=xm
		@c=0
	end	
	
	def hello(hsh = {})
		send("hello",hsh) do
			yield if block_given?
		end
	end	
	
	def goodbye(hsh = {})
		send("goodbye",hsh) do
			yield if block_given?
		end
	end	
	
	def come_back(hsh = {})
		send("come_back",hsh) do
			yield if block_given?
		end
	end	
	
	def ok_fine(hsh = {})
		send("ok_fine",hsh) do
			yield if block_given?
		end
	end	
		
	def send(tag_name,hsh = {})
		ret=""
		ret+=" "*@c if @xm
		ret+="<#{tag_name}"
		hsh.each {|key, value| ret+=" #{key}='#{value}'" }
		if block_given? and yield!=nil
			@c+=BR
			ret+=">"
			ret+="\n" if @xm
			ret+=yield	
			@c-=BR
			ret+=" "*@c if @xm			
			ret+="</#{tag_name}>"
			ret+="\n" if @xm		
		else
			ret+="/"+">"
			ret+="\n" if @xm	
		end
		return ret
	end
end
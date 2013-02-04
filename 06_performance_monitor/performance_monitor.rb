def measure(a=1)
	c=0
	timeall=0
	while c<a
		t = Time.now
		yield if block_given?
		c+=1
		timeall+=Time.now-t
	end
	timeall/a	
end
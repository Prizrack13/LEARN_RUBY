def reverser
	mas=yield.split(" ")
	mas.collect!{|x| x.reverse }
	mas.join(" ")
end

def adder(a=1)
	yield+a
end

def repeater(a=1)
	while a>0
		yield if block_given?
		a-=1
	end
end

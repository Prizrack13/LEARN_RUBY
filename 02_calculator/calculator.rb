def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(ar)
	if ar.empty?
		0
	else
		s = 0
		ar.each {|x| s+=x }
		return s
	end
end

def multiply(*a)
	ret = 1
	a.each{|x|  ret*=x}
	return ret
end

def power(a,b)
	a**b
end

def factorial(a)
	ret=1
	a.times do |x|
		ret*=x+1
	end
	return ret
end

def factorialrec(a)
	if a == 0 or a == 1 
		return 1
	else 
		return factorialrec(a-1)*a
	end
end
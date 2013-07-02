def add(a,b)
	a+b
end

def subtract(a,b)
	a-b
end

def sum(ar)
  ar.inject(0, :+)
end

def multiply(*ar)
  ar.inject(1, :*)
end

def power(a,b)
	a**b
end

def factorial(a)
  a <= 1 ? 1 : factorial(a-1) * a
end

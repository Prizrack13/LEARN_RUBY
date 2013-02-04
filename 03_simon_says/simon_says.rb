LITTLE_WORDS = %w{a an and as at but by en for if in of on or the to v v. via vs vs. over}

def echo(a)
	return a
end

def shout(a)
	a.upcase
end

def repeat(a,c=2)
	(a+" ")*(c-1)+a
end

def start_of_word(a,c)
	a[0,c]
end

def first_word(a)
	a.split(" ")[0]
end

def titleize(a)
	ret=""
	mas=a.downcase.split(" ")
	mas.collect!{|x| LITTLE_WORDS.include?(x) ? x : x.capitalize }
	if !mas.empty?
		mas[0]=mas.first.capitalize
	end
	mas.join(" ")
end
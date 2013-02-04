VOWEL = %w{a e i o u}

def VOW(a)
	ret=a
	if !VOWEL.include?(a[0]) 
		if a[0..1]=="qu"
			ind =2
		else 	
			ind=a.index(/[aeiou]/)
		end
		if ind
			ret= a[ind..a.length]+a[0..ind-1]
		end
	end
	ret=ret+"ay"
	if ret.downcase==ret 
		return ret
	else 
		return ret.capitalize
	end
end

def translate(a)
	ret=""
	mas=a.split(" ")
	print mas
	mas.collect!{|x| VOW(x) }
	mas.join(" ")
end

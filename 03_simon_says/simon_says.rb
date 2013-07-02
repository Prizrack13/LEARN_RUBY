LITTLE_WORDS = %w{a an and as at but by en for if in of on or the to v v. via vs vs. over}

def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str,times=2)
	"#{str} "*(times-1)+str
end

def start_of_word(str,length)
  str[0,length]
end

def first_word(str)
  str.split[0]
end

def titleize(str)
	mas=str.downcase.split
	mas.collect!{|x| LITTLE_WORDS.include?(x) ? x : x.capitalize }
  mas[0]=mas.first.capitalize unless mas.empty?
	mas.join(" ")
end
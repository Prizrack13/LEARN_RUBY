def echo(str)
  str
end

def shout(str)
  str.upcase
end

def repeat(str, times = 2)
  "#{str} " * (times - 1) + str
end

def start_of_word(str, length)
  str[0, length]
end

def first_word(str)
  str.split.first
end

def titleize(str)
  little_words = %w{a an and as at but by en for if in of on or the to v v. via vs vs. over}
  str.downcase.split.map.with_index{|x, i| little_words.include?(x) && i > 0 ? x : x.capitalize}.join(' ')
end

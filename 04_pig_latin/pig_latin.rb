def translate(str)
  str.gsub!(/\b[aeiouy]\w+/i,'\0ay')
  str.gsub!(/\b(qu|sch|[^aeiouy\s]+)(\w+)/i,'\2\1ay')
  str.gsub(/\b\w+/){ |word|
    word[/[A-Z]/] ? word.capitalize : word
  }
end

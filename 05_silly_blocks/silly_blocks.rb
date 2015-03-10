def reverser
  yield.split.collect{|x| x.reverse }.join(' ')
end

def adder(a = 1)
  yield + a
end

def repeater(a = 1)
  a.times { yield if block_given? }
end

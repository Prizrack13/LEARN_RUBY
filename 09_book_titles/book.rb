class Book
  attr_accessor :title
  
  def initialize
    @title = ''
  end  

  def title=(title)
     @title = titleize(title)
  end  
    
  private
  LITTLE_WORDS = %w{a an and as at but by en for if in of on or the to v v. via vs vs. over}
  
  def titleize(str)
    mas = str.downcase.split
    mas.collect!{|x| LITTLE_WORDS.include?(x) ? x : x.capitalize}
    mas[0] = mas.first.capitalize unless mas.empty?
    mas.join(' ')
  end
end
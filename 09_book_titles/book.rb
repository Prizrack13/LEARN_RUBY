class Book
  attr_accessor :title
  
  def initialize
    @title = ''
  end  

  def title=(title)
     @title = titleize(title)
  end  
    
  private

  def titleize(str)
    little_words = %w{a an and as at but by en for if in of on or the to v v. via vs vs. over}
    str.downcase.split.map.with_index{|x, i| little_words.include?(x) && i > 0 ? x : x.capitalize}.join(' ')
  end
end

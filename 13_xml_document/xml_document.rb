class XmlDocument
  BR = 2

  def initialize(xm=false)
    @xm, @c = xm, 0
  end

  def method_missing(tag_name,hsh = {})
    ret = ''
    ret += ' ' * @c if @xm
    ret += "<#{tag_name}"
    hsh.each {|key, value| ret += " #{key}='#{value}'" }
    if block_given? and yield !=nil
      @c += BR
      ret += '>'
      ret += "\n" if @xm
      ret += yield
      @c -= BR
      ret += ' '*@c if @xm
      ret +="</#{tag_name}>"
      ret +="\n" if @xm
    else
      ret += "/"+">"
      ret += "\n" if @xm
    end
    ret
  end
end
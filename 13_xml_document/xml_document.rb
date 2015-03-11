class XmlDocument
  BR = 2

  def initialize(xm = false)
    @xm, @c = xm, 0
  end

  def method_missing(name, hsh = {})
    tags = hsh.empty? ? '' : " #{hsh.map {|key, value| "#{key}='#{value}'" }.join(' ')}"
    ret = "#{' ' * @c if @xm}<#{name}#{tags}"
    if block_given? and yield != nil
      @c += BR
      "#{ret}>#{"\n" if @xm}#{yield}#{' '*(@c -= BR) if @xm}</#{name}>#{"\n" if @xm}"
    else
      "#{ret}/>#{"\n" if @xm}"
    end
  end
end

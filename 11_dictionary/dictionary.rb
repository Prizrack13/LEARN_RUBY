class Dictionary
  attr_accessor :entries  
  
  def initialize
    @entries = {}
  end  
  
  def add(hsh)
    hsh.class == Hash ? @entries.merge!(hsh) : @entries.merge!(hsh => nil)
  end  
  
  def keywords
    @entries.keys.sort 
  end  
  
  def include?(k)
    @entries.has_key?(k)
  end  
  
  def find(key)
    @entries.select {|k, v| k.start_with?(key)}
  end

  def printable
    @entries.sort.map {|key, value| "[#{key}] \"#{value}\"" }.join("\n")
  end
end

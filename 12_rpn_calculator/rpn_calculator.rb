class RPNCalculator
    def initialize
    @st = []
  end  
    
  def push(a)
    @st.push(a)
  end  
  
  def value
    @st.last
  end  
  
  def plus
    check_stack
    @st.push(@st.pop + @st.pop)
  end  
  
  def times
    check_stack
    @st.push(@st.pop * @st.pop)
  end  
    
  def minus
    check_stack
    @st.push(@st.pop - @st.pop)
  end  
  
  def divide
    check_stack
    @st.push(@st.pop.to_f / @st.pop.to_f)
  end  
  
  def tokens(s)
    s.split(' ').collect! {|x| %w{+ - * /}.include?(x)? x.intern : x.to_f }
  end  
  
  def evaluate(s)
    tokens(s).each{|x| exe(x)}
    value
  end  

  private 

  def exe(x)
    push(x) && return if x.class != Symbol
    case x
    when :+ then plus
    when :- then minus
    when :* then times
    when :/ then divide
    end
  end
  
  def check_stack
    fail 'calculator is empty' if @st.size < 2
  end
end

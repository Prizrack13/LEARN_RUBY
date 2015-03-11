class Bignum
  def in_words
    number(self)
  end
  private
  NUMB = %w{billion trillion quadrillion quintillion sextillion septillion octillion nonillion decillion undecillion duodecillion tredecillion quattuordecillion quindecillion sexdecillion septendecillion octodecillion novemdecillion vigintillion}
  
  def number(x)
    arr, r = [], 0
    y = x % 1000000000
    x /= 1000000000
    arr.push(y.in_words) if y != 0
    while x > 0
      y = x % 1000
      arr.push("#{y.in_words} #{NUMB[r]}") if y != 0
      x /= 1000
      r += 1
    end
    arr.reverse.join(' ')
  end
end

class Fixnum
  def in_words
    number(self)
  end

  private 
  NUMB = %w{zero one two three four five six seven eight nine}
  NUMB2 = %w{ten eleven twelve thir four fif six seven eigh nine for twen}
  NUMB3 = %w{thousand million billion trillion}
  
  def number(x)
    ret = ''
    begin 
      case x
         when 0..9 
          ret += zero_to_nine(x)
          x = 0
         when 10..12 
          ret += ten_to_twelve(x)
          x = 0
         when 13..19
          ret += thirty_to_ninety(x)
          x = 0
         when 20..99
          ret += tens(x / 10)
          x = x % 10
         when 100..999
          ret += hund(x / 100, ' hundred')
          x = x % 100
        else
          4.times do |t|
            if ((1000 ** (t + 1))..(1000 ** (t + 2) - 1)).include?(x)
              ret += hund(x / (1000 ** (t + 1)), " #{NUMB3[t]}")
              x = x % (1000 ** (t + 1))
            end
          end
      end
      ret += ' ' if x != 0
    end while x > 0
    ret
  end
  
  def zero_to_nine(x)
    NUMB[x]
  end
  
  def ten_to_twelve(x)
    NUMB2[x % 10]
  end
  
  def thirty_to_ninety(x)
    "#{NUMB2[x % 10]}teen"
  end
  
  def tens(x)
    x = 11 if x == 2
    x = 10 if x == 4
    "#{NUMB2[x]}ty"
  end
  
  def hund(x, add)
    number(x) + add
  end
end

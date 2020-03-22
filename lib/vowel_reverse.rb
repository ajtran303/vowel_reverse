# Iteration 1: return OG string, return reversed string
# Iteration 2: return only vowels? return only consonants?
# Iteration 3: return string with vowels * out

class VowelReverse
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def reverse
    @str.reverse
  end

  def vowel_strip
    @str.scan(/[aeiou]/i).join
  end

  def cons_strip
    @str.scan(/[^aeiou]/i).join
  end

  def vowel_star
    @str.gsub(/[aeiou]/i, "*")
  end

  def star
    vowel_star
  end

end

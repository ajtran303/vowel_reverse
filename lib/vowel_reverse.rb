# Iteration 1: return OG string, return reversed string
# Iteration 2: return only vowels? return only consonants?

class VowelReverse
  attr_reader :str

  def initialize(str)
    @str = str
  end

  def reverse
    @str.reverse
  end

end

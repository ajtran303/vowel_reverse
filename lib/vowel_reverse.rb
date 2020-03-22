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

  def vowel_strip
    str_arr = @str.chars
    vow_arr = []

    str_arr.each do |c|
      if c === "A"
        vow_arr << c
      elsif c === "E"
        vow_arr << c
      elsif c === "I"
        vow_arr << c
      elsif c === "O"
        vow_arr << c
      elsif c === "U"
        vow_arr << c
      elsif c === "a"
        vow_arr << c
      elsif c === "e"
        vow_arr << c
      elsif c === "i"
        vow_arr << c
      elsif c === "o"
        vow_arr << c
      elsif c === "u"
        vow_arr << c
      end
    end

    vow_arr.join
  end

end

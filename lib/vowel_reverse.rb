# Iteration 4: delete everything and do it again!

class VowelReverse
  attr_reader :str

  def initialize(str)
    if str.is_a? String
      @str = str
    end
  end

  def reverse_vowels
    star_vowels_arr = @str.gsub(/[aeiou]/i, "*").split("")

    rev_vowels_arr = @str.scan(/[aeiou]/i)

    n = star_vowels_arr.map do |char|
      if char == "*"
        char = rev_vowels_arr.pop
      else
        char
      end
    end

    n.join
  end

end

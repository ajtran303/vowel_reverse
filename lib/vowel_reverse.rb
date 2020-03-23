# Iteration 4: delete everything and do it again!
# Iteration 5? https://launchschool.com/books/oo_ruby/read/classes_and_objects_part2
# Does this class need to instantiate new objects?
# What if this was just one class method?

# https://thoughtbot.com/blog/meditations-on-a-class-method
# write a beautiful class method: "instantiate the class then call a method on the instance."

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

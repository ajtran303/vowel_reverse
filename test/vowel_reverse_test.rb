gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require_relative '../lib/vowel_reverse'

class VowelReverseTest < Minitest::Test

  def test_it_initializes_with_string
    # skip
    string = VowelReverse.new("string")
    assert_equal "string", string.str
  end

  def test_it_returns_the_string_with_reversed_vowels
    # skip
    solved = VowelReverse.new("A.u.E.o.I.i.O.e.U.a")
    assert_equal "a.U.e.O.i.I.o.E.u.A", solved.reverse_vowels
  end

  def test_it_doesnt_take_a_number
    string = VowelReverse.new(2)
    assert_nil string.str
  end

# my brain hurts what do i do now
  def test_it_does_weird_stuff_with_numbers
    skip
    string = VowelReverse.new(2)
    assert_equal "", string.reverse_vowels
  end

end

gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/vowel_reverse'

class VowelReverseTest < Minitest::Test

  def test_it_takes_and_returns_a_string
    reverse = VowelReverse.new("Hello World")
    assert_equal "Hello World", reverse.str
  end

  def test_it_takes_and_returns_a_different_string
    reverse = VowelReverse.new("Hi people")
    assert_equal "Hi people", reverse.str
  end

  def test_it_returns_a_reverse_string
    reverse = VowelReverse.new("Hello World")
    assert_equal "Hello World".reverse, reverse.reverse
  end

  def test_it_returns_the_og_string_after_reverse_is_called
    reverse = VowelReverse.new("Hello World")
    reverse.reverse
    reverse.str
    assert_equal "Hello World", reverse.str
  end

  def test_it_returns_the_same_reversed_string_if_called_twice
    reverse = VowelReverse.new("Hello World")
    reverse.reverse
    reverse.reverse
    assert_equal "Hello World".reverse, reverse.reverse
  end

  def test_it_returns_the_og_string_after_reverse_is_called_twice
    reverse = VowelReverse.new("Hello World")
    reverse.reverse
    reverse.reverse
    reverse.str
    assert_equal "Hello World", reverse.str
  end

  def test_it_returns_the_a_in_ha
    # skip
    reverse = VowelReverse.new("HA")
    reverse.vowel_strip
    assert_equal "A", reverse.vowel_strip
  end

  def test_it_returns_two_vowels
    # skip
    reverse = VowelReverse.new("HAA")
    reverse.vowel_strip
    assert_equal "AA", reverse.vowel_strip
  end

  def test_it_returns_arbit_vowels
    # skip
    reverse = VowelReverse.new("UAJJEINN")
    reverse.vowel_strip
    assert_equal "UAEI", reverse.vowel_strip
  end

  def test_it_can_return_anycase_vowels
    # skip
    reverse = VowelReverse.new("uaEE")
    reverse.vowel_strip
    assert_equal "uaEE", reverse.vowel_strip
  end

  def test_it_really_returns_any_vowels
    # skip
    reverse = VowelReverse.new("aaUUUNngnanIIOEeeaahhiiIsI")
    reverse.vowel_strip
    assert_equal "aaUUUaIIOEeeaaiiII", reverse.vowel_strip
  end

  def test_gimme_a_b
    # skip
    reverse = VowelReverse.new("BEe")
    reverse.cons_strip
    assert_equal "B", reverse.cons_strip
  end

  def test_it_really_returns_any_consonants
    # skip
    reverse = VowelReverse.new("aaUUUNngnanIIOEeeaahhiiIsI")
    reverse.cons_strip
    assert_equal "Nngnnhhs", reverse.cons_strip
  end

  def test_vowels_are_replaced_with_stars
    starred = VowelReverse.new("Hello World")
    starred.vowel_star
    assert_equal "H*ll* W*rld", starred.vowel_star
  end

  def test_vowels_of_anycase_replaced_with_stars
    starred = VowelReverse.new("Hello World HELLO WORLD")
    starred.vowel_star
    assert_equal "H*ll* W*rld H*LL* W*RLD", starred.vowel_star
  end

  def test_call_star_returns_string_with_starred_vowels
    # skip
    starred = VowelReverse.new("Hello World HELLO WORLD")
    starred.star
    assert_equal "H*ll* W*rld H*LL* W*RLD", starred.star
  end

  def test_back_vowels_returns_reversed_string_of_only_vowels
    vowels = VowelReverse.new("AEIOUaeiou")
    vowels.back_vowels
    assert_equal "uoieaUOIEA", vowels.back_vowels
  end

  def test_solve
    solved = VowelReverse.new("Hello World!")
    solved.solve
    assert_equal "Hollo Werld!", solved.solve
  end



end

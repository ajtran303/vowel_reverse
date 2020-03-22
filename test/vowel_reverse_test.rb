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

end

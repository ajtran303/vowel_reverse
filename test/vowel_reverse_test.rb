gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/vowel_reverse'

class VowelReverseTest < Minitest::Test

  def test_it_returns_a_string
    hello_world = VowelReverse.new("Hello World")
    assert_equal "Hello World", hello_world.str
  end

end

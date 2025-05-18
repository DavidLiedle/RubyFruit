require_relative 'test_helper'
require_relative '../lib/fruit'
require_relative '../lib/lemon'

class LemonTest < Minitest::Test
  def test_describe_output_includes_tartness
    lemon = Lemon.new(name: 'Lemon', color: 'yellow', ripe: true, tartness: 9)
    expected = "This is a yellow Lemon. It is ripe.\nTartness: 9.\n"
    output = capture_io { lemon.describe }.first
    assert_equal expected, output
  end

  def test_squeeze_output
    lemon = Lemon.new(name: 'Lemon', color: 'yellow', ripe: true, tartness: 5)
    output = capture_io { lemon.squeeze }.first
    assert_equal "You squeeze the Lemon and juice comes out!\n", output
  end
end

require_relative 'test_helper'
require_relative '../lib/fruit'
require_relative '../lib/grape'

class GrapeTest < Minitest::Test
  def test_describe_output_includes_seedless
    grape = Grape.new(name: 'Grape', color: 'purple', ripe: false, seedless: true)
    expected = "This is a purple Grape. It is not ripe yet.\nThis grape is seedless.\n"
    output = capture_io { grape.describe }.first
    assert_equal expected, output
  end

  def test_squeeze_output
    grape = Grape.new(name: 'Grape', color: 'purple', ripe: true, seedless: false)
    output = capture_io { grape.squeeze }.first
    assert_equal "You squeeze the Grape and juice comes out!\n", output
  end
end

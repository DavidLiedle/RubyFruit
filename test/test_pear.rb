require_relative 'test_helper'
require_relative '../lib/fruit'
require_relative '../lib/pear'

class PearTest < Minitest::Test
  def test_describe_output_includes_softness
    pear = Pear.new(name: 'Pear', color: 'green', ripe: true, softness: 3)
    expected = "This is a green Pear. It is ripe.\nSoftness level: 3.\n"
    output = capture_io { pear.describe }.first
    assert_equal expected, output
  end
end

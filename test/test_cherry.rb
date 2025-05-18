require_relative 'test_helper'
require_relative '../lib/fruit'
require_relative '../lib/cherry'

class CherryTest < Minitest::Test
  def test_describe_output_includes_sweetness
    cherry = Cherry.new(name: 'Cherry', color: 'red', ripe: true, sweetness: 5)
    expected = "This is a red Cherry. It is ripe.\nSweetness: 5.\n"
    output = capture_io { cherry.describe }.first
    assert_equal expected, output
  end
end

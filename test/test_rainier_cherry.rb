require_relative 'test_helper'
require_relative '../lib/fruit'
require_relative '../lib/cherry'
require_relative '../lib/rainier_cherry'

class RainierCherryTest < Minitest::Test
  def test_describe_output_includes_variety
    cherry = RainierCherry.new(name: 'RainierCherry', color: 'yellow-red', ripe: false, sweetness: 6)
    expected = "This is a yellow-red RainierCherry. It is not ripe yet.\nSweetness: 6.\nVariety: Rainier.\n"
    output = capture_io { cherry.describe }.first
    assert_equal expected, output
  end
end

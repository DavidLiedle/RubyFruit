require_relative 'test_helper'
require_relative '../lib/fruit'
require_relative '../lib/cherry'
require_relative '../lib/bing_cherry'

class BingCherryTest < Minitest::Test
  def test_describe_output_includes_variety
    cherry = BingCherry.new(name: 'BingCherry', color: 'dark red', ripe: true, sweetness: 7)
    expected = "This is a dark red BingCherry. It is ripe.\nSweetness: 7.\nVariety: Bing.\n"
    output = capture_io { cherry.describe }.first
    assert_equal expected, output
  end
end

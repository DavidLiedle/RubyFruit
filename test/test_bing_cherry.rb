require_relative 'test_helper'
require_relative '../lib/bing_cherry'

class BingCherryTest < Minitest::Test
  def test_describe_outputs_expected_text
    cherry = BingCherry.new(name: 'BingCherry', color: 'dark red', ripe: true, sweetness: 7)
    expected = "This is a ripe BingCherry with a sweetness level of 7.\n"
    output = capture_io { cherry.describe }.first
    assert_equal expected, output
  end
end

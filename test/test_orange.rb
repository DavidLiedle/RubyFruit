require_relative 'test_helper'
require_relative "../lib/fruit"
require_relative '../lib/orange'

class OrangeTest < Minitest::Test
  def test_describe_output_includes_segment_count
    orange = Orange.new(name: 'Orange', color: 'orange', ripe: true, segment_count: 8)
    expected = "This is a orange Orange. It is ripe.\nSegment count: 8.\n"
    output = capture_io { orange.describe }.first
    assert_equal expected, output
  end

  def test_squeeze_output
    orange = Orange.new(name: 'Orange', color: 'orange', ripe: true, segment_count: 8)
    output = capture_io { orange.squeeze }.first
    assert_equal "You squeeze the Orange and juice comes out!\n", output
  end
end

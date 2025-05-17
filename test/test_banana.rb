require_relative 'test_helper'
require_relative "../lib/fruit"
require_relative '../lib/banana'

class BananaTest < Minitest::Test
  def test_describe_output_includes_curvature
    banana = Banana.new(name: 'Banana', color: 'yellow', ripe: true, curvature: 30)
    expected = "This is a yellow Banana. It is ripe.\nCurvature: 30 degrees.\n"
    output = capture_io { banana.describe }.first
    assert_equal expected, output
  end
end

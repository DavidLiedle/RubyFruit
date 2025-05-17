require_relative 'test_helper'
require_relative "../lib/fruit"
require_relative '../lib/apple'

class AppleTest < Minitest::Test
  def test_describe_output_includes_crunch_level
    apple = Apple.new(name: 'Apple', color: 'red', ripe: false, crunch_level: 5)
    expected = "This is a red Apple. It is not ripe yet.\nCrunch level: 5.\n"
    output = capture_io { apple.describe }.first
    assert_equal expected, output
  end
end

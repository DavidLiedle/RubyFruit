require_relative 'test_helper'
require_relative '../lib/fruit'
require_relative '../lib/grapefruit'

class GrapefruitTest < Minitest::Test
  def test_describe_output_includes_bitterness
    gf = Grapefruit.new(name: 'Grapefruit', color: 'pink', ripe: true, bitterness: 4)
    expected = "This is a pink Grapefruit. It is ripe.\nBitterness: 4.\n"
    output = capture_io { gf.describe }.first
    assert_equal expected, output
  end

  def test_squeeze_output
    gf = Grapefruit.new(name: 'Grapefruit', color: 'pink', ripe: true, bitterness: 4)
    output = capture_io { gf.squeeze }.first
    assert_equal "You squeeze the Grapefruit and juice comes out!\n", output
  end
end

require_relative 'test_helper'
require_relative '../lib/fruit'

class FruitTest < Minitest::Test
  def test_describe_output
    fruit = Fruit.new(name: 'Fruit', color: 'green', ripe: true)
    output = capture_io { fruit.describe }.first
    assert_equal "This is a green Fruit. It is ripe.\n", output
  end
end

require_relative 'test_helper'
require_relative '../lib/fruit'
require_relative '../lib/apple'
require_relative '../lib/fruit_factory'

class FruitFactoryTest < Minitest::Test
  def test_dynamic_creation
    apple = FruitFactory.apple(name: 'Apple', color: 'green', ripe: false, crunch_level: 4)

    assert_instance_of Apple, apple
    assert_equal 'Apple', apple.name
  end
end

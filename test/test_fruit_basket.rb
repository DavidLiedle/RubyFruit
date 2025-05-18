require_relative 'test_helper'
require_relative '../lib/fruit'
require_relative '../lib/apple'
require_relative '../lib/banana'
require_relative '../lib/fruit_basket'

class FruitBasketTest < Minitest::Test
  def test_enumeration_returns_all_fruits
    apple = Apple.new(name: 'Apple', color: 'red', ripe: true, crunch_level: 5)
    banana = Banana.new(name: 'Banana', color: 'yellow', ripe: false, curvature: 30)
    basket = FruitBasket.new(apple, banana)

    names = basket.map(&:name)
    assert_equal ['Apple', 'Banana'], names
  end
end

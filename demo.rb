# frozen_string_literal: true

# Load the fruit classes. Normally you'd use `require_relative` or bundler, but
# for this simple demo we'll directly load them.
require_relative 'lib/fruit'
require_relative 'lib/apple'
require_relative 'lib/banana'
require_relative 'lib/orange'
require_relative 'lib/pear'
require_relative 'lib/grape'
require_relative 'lib/lemon'
require_relative 'lib/grapefruit'
require_relative 'lib/cherry'
require_relative 'lib/bing_cherry'
require_relative 'lib/rainier_cherry'
require_relative 'lib/fruit_basket'
require_relative 'lib/fruit_factory'

# Set the locale based on the first command line argument (default :en)
Localization.locale = (ARGV.shift || 'en').to_sym

# Instantiate some fruits using the FruitFactory which leverages
# Ruby's metaprogramming to look up the correct class.
apple = FruitFactory.apple(name: 'Apple', color: 'red', ripe: true, crunch_level: 7)
banana = FruitFactory.banana(name: 'Banana', color: 'yellow', ripe: false, curvature: 45)
orange = FruitFactory.orange(name: 'Orange', color: 'orange', ripe: true, segment_count: 10)

# Put them into a list to demonstrate polymorphism: each object responds to `describe` in its own way even though we call the same method name.
pear = FruitFactory.pear(name: 'Pear', color: 'green', ripe: true, softness: 3)
grape = FruitFactory.grape(name: 'Grape', color: 'purple', ripe: false, seedless: true)
lemon = FruitFactory.lemon(name: 'Lemon', color: 'yellow', ripe: true, tartness: 8)
grapefruit = FruitFactory.grapefruit(name: 'Grapefruit', color: 'pink', ripe: true, bitterness: 4)
bing = FruitFactory.bing_cherry(name: 'BingCherry', color: 'dark red', ripe: true, sweetness: 6)
rainier = FruitFactory.rainier_cherry(name: 'RainierCherry', color: 'yellow-red', ripe: false, sweetness: 7)
fruits = FruitBasket.new(apple, banana, orange, pear, grape, lemon, grapefruit, bing, rainier)

fruits.each do |fruit|
  fruit.describe
  # Only some fruits are squeezable. We can check if the method exists first.
  fruit.squeeze if fruit.respond_to?(:squeeze)
  puts '-' * 40
end

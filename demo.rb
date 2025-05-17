# frozen_string_literal: true

# Load the fruit classes. Normally you'd use `require_relative` or bundler, but
# for this simple demo we'll directly load them.
require_relative 'lib/fruit'
require_relative 'lib/apple'
require_relative 'lib/banana'
require_relative 'lib/orange'

# Instantiate some fruits
apple = Apple.new(name: 'Apple', color: 'red', ripe: true, crunch_level: 7)
banana = Banana.new(name: 'Banana', color: 'yellow', ripe: false, curvature: 45)
orange = Orange.new(name: 'Orange', color: 'orange', ripe: true, segment_count: 10)

# Put them into a list to demonstrate polymorphism: each object responds to
# `describe` in its own way even though we call the same method name.
fruits = [apple, banana, orange]

fruits.each do |fruit|
  fruit.describe
  # Only some fruits are squeezable. We can check if the method exists first.
  fruit.squeeze if fruit.respond_to?(:squeeze)
  puts '-' * 40
end

# frozen_string_literal: true

# BingCherry represents a specific variety of cherry.
# It exposes basic Fruit-like attributes without relying
# on the broader class hierarchy so that FruitFactory
# can easily instantiate it.
class BingCherry
  attr_reader :name, :color, :ripe, :sweetness

  def initialize(name:, color:, ripe:, sweetness:)
    @name = name
    @color = color
    @ripe = ripe
    @sweetness = sweetness
  end

  # Prints a short description of the cherry.
  def describe
    puts "This is a #{ripe ? 'ripe' : 'not ripe'} #{name} with a sweetness level of #{sweetness}."
  end
end

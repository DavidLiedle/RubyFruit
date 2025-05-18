# frozen_string_literal: true

# FruitBasket is a collection class that can hold many Fruit objects.
# It mixes in Enumerable so you can iterate over the fruits using standard
# Ruby enumeration methods.
class FruitBasket
  include Enumerable

  def initialize(*fruits)
    @fruits = fruits.flatten
  end

  # Adds a fruit to the basket.
  def <<(fruit)
    @fruits << fruit
    self
  end

  # Yields each fruit in the basket to the given block. If no block is
  # provided, it returns an Enumerator.
  def each(&block)
    return @fruits.each unless block_given?

    @fruits.each(&block)
  end
end

# frozen_string_literal: true

require_relative 'localization'

# This module provides squeezing behavior for fruits that can be juiced.
module Squeezable
  # Prints a simple message explaining that the fruit is being squeezed.
  def squeeze
    puts Localization.t('fruit.squeeze', name: name)
  end
end

# The Fruit class acts as a base class for all specific fruit types.
# It demonstrates common attributes and a method that can be overridden
# by subclasses.
class Fruit
  # attr_accessor creates getter and setter methods for these instance variables,
  # illustrating encapsulation in Ruby.
  attr_accessor :name, :color, :ripe

  # The constructor accepts details about the fruit. Each subclass will call
  # super to ensure these base attributes are set.
  def initialize(name:, color:, ripe: false)
    @name = name
    @color = color
    @ripe = ripe
  end

  # This method describes the fruit using its attributes. Subclasses
  # will override this method to add their own details while still
  # leveraging the basic description provided here.
  def describe
    puts Localization.t('fruit.description', color: color, name: name,
                        ripeness: ripeness_description)
  end

  private

  # A helper method that other methods can use. Marking it private keeps it
  # hidden from users of the class, illustrating encapsulation.
  def ripeness_description
    key = ripe ? 'fruit.ripe' : 'fruit.not_ripe'
    Localization.t(key)
  end
end

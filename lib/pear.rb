# frozen_string_literal: true

# Pear inherits from Fruit and adds a softness attribute
# representing how ripe or soft the pear is.
class Pear < Fruit
  attr_accessor :softness

  def initialize(softness:, **args)
    super(**args)
    @softness = softness
  end

  # Override Fruit#describe to include the softness value.
  def describe
    super
    puts Localization.t('pear.softness', softness: softness)
  end
end

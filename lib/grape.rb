# frozen_string_literal: true

# Grape inherits from Fruit and optionally includes squeezing behavior
# to represent making grape juice.
class Grape < Fruit
  include Squeezable

  attr_accessor :seedless

  def initialize(seedless:, **args)
    super(**args)
    @seedless = seedless
  end

  # Override Fruit#describe to mention whether the grape is seedless.
  def describe
    super
    descriptor_key = seedless ? 'grape.seedless' : 'grape.with_seeds'
    descriptor = Localization.t(descriptor_key)
    puts Localization.t('grape.description', descriptor: descriptor)
  end
end

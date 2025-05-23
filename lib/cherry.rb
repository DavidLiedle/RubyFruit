# frozen_string_literal: true

# Cherry is a base class representing general cherry behavior.
# Specific cherry varieties like Bing or Rainier inherit from this class.
class Cherry < Fruit
  attr_accessor :sweetness

  def initialize(sweetness:, **args)
    super(**args)
    @sweetness = sweetness
  end

  def describe
    super
    puts Localization.t('cherry.sweetness', sweetness: sweetness)
  end
end

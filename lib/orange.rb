# frozen_string_literal: true

# Orange inherits from Fruit and includes the Squeezable module to demonstrate
# how modules add behavior to a class.
class Orange < Fruit
  include Squeezable

  attr_accessor :segment_count

  def initialize(segment_count:, **args)
    super(**args)
    @segment_count = segment_count
  end

  # Override Fruit#describe to include segment information.
  def describe
    super
    puts Localization.t('orange.segment_count', segment_count: segment_count)
  end
end

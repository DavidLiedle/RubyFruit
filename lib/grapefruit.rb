# frozen_string_literal: true

# Grapefruit is another citrus fruit that can be juiced.
class Grapefruit < Fruit
  include Squeezable

  attr_accessor :bitterness

  def initialize(bitterness:, **args)
    super(**args)
    @bitterness = bitterness
  end

  def describe
    super
    puts "Bitterness: #{bitterness}."
  end
end

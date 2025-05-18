# frozen_string_literal: true

# Lemon is a citrus fruit that can be juiced.
class Lemon < Fruit
  include Squeezable

  attr_accessor :tartness

  def initialize(tartness:, **args)
    super(**args)
    @tartness = tartness
  end

  def describe
    super
    puts "Tartness: #{tartness}."
  end
end

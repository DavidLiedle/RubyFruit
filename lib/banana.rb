# frozen_string_literal: true

# Banana inherits from Fruit and adds the curvature attribute to show how
# subclasses can introduce unique behavior or data.
class Banana < Fruit
  attr_accessor :curvature

  def initialize(curvature:, **args)
    super(**args)
    @curvature = curvature
  end

  # This method overrides Fruit#describe to mention the curvature.
  def describe
    super
    puts "Curvature: #{curvature} degrees."
  end

  private

  # An example of a private helper method used only within Banana.
  def peel_message
    "Don't forget to peel it first!"
  end
end

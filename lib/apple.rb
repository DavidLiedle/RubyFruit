# frozen_string_literal: true

# Apple is a specific type of Fruit. It inherits common behavior and
# attributes from the Fruit class and adds its own trait: crunch_level.
class Apple < Fruit
  attr_accessor :crunch_level

  # Apple calls `super` so the Fruit part of the object gets initialized.
  def initialize(crunch_level:, **args)
    super(**args)
    @crunch_level = crunch_level
  end

  # This method overrides Fruit#describe to include the crunch level.
  def describe
    super
    puts Localization.t('apple.crunch_level', crunch_level: crunch_level)
  end
end

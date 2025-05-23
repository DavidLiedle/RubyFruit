# frozen_string_literal: true

# RainierCherry is a yellow/red variety of Cherry.
class RainierCherry < Cherry
  def describe
    super
    puts Localization.t('rainier_cherry.variety')
  end
end

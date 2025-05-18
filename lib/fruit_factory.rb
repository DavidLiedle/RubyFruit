# frozen_string_literal: true

# FruitFactory uses Ruby's metaprogramming to dynamically create fruit objects.
# Calling methods like `FruitFactory.apple` will instantiate an Apple object
# if a matching class exists.
class FruitFactory
  class << self
    def method_missing(name, *args, **kwargs, &block)
      class_name = camelize(name)
      if Object.const_defined?(class_name)
        Object.const_get(class_name).new(**kwargs, &block)
      else
        super
      end
    end

    def respond_to_missing?(name, include_private = false)
      class_name = camelize(name)
      Object.const_defined?(class_name) || super
    end

    private

    # Converts snake_case names to CamelCase so that method names like
    # `bing_cherry` map to the `BingCherry` class.
    def camelize(snake)
      snake.to_s.split('_').map!(&:capitalize).join
    end
  end
end

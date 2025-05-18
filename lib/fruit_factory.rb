# frozen_string_literal: true

# FruitFactory uses Ruby's metaprogramming to dynamically create fruit objects.
# Calling methods like `FruitFactory.apple` will instantiate an Apple object
# if a matching class exists.
class FruitFactory
  class << self
    def method_missing(name, *args, **kwargs, &block)
      class_name = name.to_s.capitalize
      if Object.const_defined?(class_name)
        Object.const_get(class_name).new(**kwargs, &block)
      else
        super
      end
    end

    def respond_to_missing?(name, include_private = false)
      class_name = name.to_s.capitalize
      Object.const_defined?(class_name) || super
    end
  end
end

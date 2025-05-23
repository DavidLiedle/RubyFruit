# frozen_string_literal: true

require 'yaml'

# Simple localization module to load translations from YAML files.
module Localization
  class << self
    attr_accessor :locale

    # Translate a dotted key using the current locale. Placeholders can be
    # interpolated using `%{placeholder}` syntax.
    def t(key, **options)
      load_translations(locale)
      value = key.to_s.split('.').reduce(translations[locale]) do |acc, part|
        acc && acc[part]
      end
      value ||= key
      if value.is_a?(String)
        options.each { |k, v| value = value.gsub("%{#{k}}", v.to_s) }
      end
      value
    end

    private

    def translations
      @translations ||= {}
    end

    def load_translations(loc)
      return if translations[loc]

      file = File.join(__dir__, '..', 'locales', "#{loc}.yml")
      translations[loc] = File.exist?(file) ? YAML.load_file(file) : {}
    end
  end

  self.locale = :en
end

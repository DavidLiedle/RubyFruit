require 'minitest/autorun'
require_relative '../lib/localization'

# Ensure tests run with the English locale
Localization.locale = :en

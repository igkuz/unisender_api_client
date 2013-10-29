require 'bundler/setup'
Bundler.require

require 'minitest/autorun'
require 'webmock/minitest'

# colorize output
require 'minitest/pride'
Minitest::PrideIO.pride!

if ENV['COVERAGE']
  require 'simplecov'
  SimpleCov.start
end

class TestCase < Minitest::Test
end

# require all project files
Dir[ File.join(File.dirname(__FILE__), "../lib/**/*.rb")].each { |file| require file }

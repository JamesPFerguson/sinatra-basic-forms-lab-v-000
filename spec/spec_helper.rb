ENV["SINATRA_ENV"] = "test"
require_relative '../config/environment.rb'
require 'rack/test'

RSpec.configure do |config|
  config.include Capybara/dsl
  config.include Rack::Test::Methods
  config.order = 'default'
end

def app
  Rack::Builder.parse_file('config.ru').first
end

Capybara.app = app

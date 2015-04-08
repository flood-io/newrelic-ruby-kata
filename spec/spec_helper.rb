require File.expand_path('../../config/environment', __FILE__)

require 'rspec/rails'
require 'capybara/rails'

Capybara.default_wait_time = 5

RSpec.configure do |config|
  config.include Capybara::DSL
  config.render_views
end

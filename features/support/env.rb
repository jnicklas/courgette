## this file is just for bootstrapping tests, it won't actually be generated!

ENV["RAILS_ENV"] = "test"
RAILS_ENV = ENV["RAILS_ENV"]

require 'rubygems'

require File.expand_path(File.dirname(__FILE__) + "/../../fixture_rails_root/config/environment")

require 'cucumber/rails/world'
require 'cucumber/formatter/unicode' # Comment out this line if you don't want Cucumber Unicode support
Cucumber::Rails.use_transactional_fixtures
Cucumber::Rails.bypass_rescue # Comment out this line if you want Rails own error handling 
                              # (e.g. rescue_action_in_public / rescue_responses / rescue_from)

require 'webrat'

Webrat.configure do |config|
  config.mode = :rails
end

require 'cucumber/rails/rspec'
require 'webrat/core/matchers'
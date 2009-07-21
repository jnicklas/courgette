ENV["RAILS_ENV"] = "test"
RAILS_ENV = ENV["RAILS_ENV"]

require 'rubygems'

require File.expand_path(File.dirname(__FILE__) + "/../fixture_rails_root/config/environment")

require 'spec'
require 'spec/autorun'
require 'spec/rails'
require 'remarkable_rails'

$: << File.expand_path(File.dirname(__FILE__) + '/../lib/')
require 'courgette'

Spec::Runner.configure do |config|
  config.use_transactional_fixtures = true
  config.use_instantiated_fixtures  = false
end

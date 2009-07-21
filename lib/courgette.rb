$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'cucumber'
require 'cucumber/feature_file'

module Courgette
  VERSION = '0.0.1'
  
  autoload :Feature, 'courgette/feature'
  
  class << self
    def features(root)
      Dir.glob(File.join(root, '**/*.feature')).map do |file|
        Courgette::Feature.new(file)
      end
    end
  end
end
$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'cucumber'
require 'cucumber/feature_file'
require 'cucumber/formatter/html'

module Courgette
  VERSION = '0.0.3'
  
  autoload :Feature, 'courgette/feature'
  
  class << self
    def features
      Dir.glob(File.join(feature_root, '**/*.feature')).map do |file|
        Courgette::Feature.new(file)
      end
    end
    
    def first
      features.first
    end
    
    def find(param)
      features.find { |f| f.to_param == param }
    end

    def feature_root
      Rails.root.join('features').to_s
    end
  end
end
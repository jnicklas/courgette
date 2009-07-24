module Courgette

  class Feature

    attr_reader :path

    def initialize(path)
      @path = path
    end

    def name
      File.read(@path).to_s[/^Feature: (.+)$/, 1] || name_lines.first.split(':', 2).second.strip
    end

    def feature_elements_size
      ast.instance_variable_get('@feature_elements').size
    end

    def to_param
      relative_path.sub(/^\//, '').sub(/\.feature$/, '').parameterize.dasherize.to_s
    end

    def to_html
      step_mother = Object.new
      step_mother.extend(Cucumber::StepMother)
      visitor = Cucumber::Formatter::Html.new(step_mother, nil, {})
      visitor.visit_feature(ast)
    end
    
    def ==(other)
      to_param == other.to_param
    end

  private

    def relative_path
      File.expand_path(path).sub(Courgette.feature_root, '')
    end

    def name_lines
      ast.name.respond_to?(:lines) ? ast.name.lines.to_a : ast.name.to_a
    end

    def feature_file
      @feature_file ||= Cucumber::FeatureFile.new(path)
    end

    def ast
      @ast ||= feature_file.parse
    end

  end

end

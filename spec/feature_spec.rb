require File.join(File.dirname(__FILE__), 'spec_helper')

describe Courgette::Feature do
  
  before do
    @feature = Courgette::Feature.new(Rails.root.join('features/user_eats_rabbits.feature').to_s)
  end
  
  describe '#name' do
    it "should return the feature's name" do
      @feature.name.should == "User eats a Rabbit"
    end
  end
  
  describe '#feature_elements_size' do
    it "should return the number of scenarios" do
      @feature.feature_elements_size.should == 2
    end
  end
  
  describe '#to_param' do
    it "should return the feature's path, relative to feature_root, parameterized and without extension" do
      @feature.to_param.should == 'user-eats-rabbits'
    end
  end
  
  describe '#to_html' do
    it "should contain the feature text" do
      @feature.to_html.should include('In order to get that delicious feeling')
      @feature.to_html.should include('As a user')
      @feature.to_html.should include('I want to eat some Rabbits')
      @feature.to_html.should include('eat a really cute rabbit')
      @feature.to_html.should include('there is a rabbit')
      @feature.to_html.should include('the rabbit is really cute')
      @feature.to_html.should include('eat the rabbit')
      @feature.to_html.should include('should feel good')
    end
  end
  
end
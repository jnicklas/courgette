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
  
end
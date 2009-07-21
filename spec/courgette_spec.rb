require File.join(File.dirname(__FILE__), 'spec_helper')

describe Courgette do
  
  describe '.features' do
    it "should return a list of Courgette::Feature objects" do
      Courgette.features.first.should be_an_instance_of(Courgette::Feature)
      Courgette.features.second.should be_an_instance_of(Courgette::Feature)
    end
    
    it "should glob the path for feature files and get them by path" do
      Courgette.features.map(&:path).should include(Rails.root.join('features/user_eats_rabbits.feature').to_s)
      Courgette.features.map(&:path).should include(Rails.root.join('features/visitor_transforms.feature').to_s)
    end
  end
  
  describe '.find' do
    it "should find a feature by param" do
      @feature = Courgette.find('user-eats-rabbits')
      @feature.should be_an_instance_of(Courgette::Feature)
      @feature.path.should == Rails.root.join('features/user_eats_rabbits.feature').to_s
    end
  end
  
end
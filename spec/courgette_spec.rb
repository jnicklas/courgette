require File.join(File.dirname(__FILE__), 'spec_helper')

describe Courgette do
  
  describe '.features' do
    it "should return a list of Courgette::Feature objects" do
      Courgette.features(Rails.root).first.should be_an_instance_of(Courgette::Feature)
      Courgette.features(Rails.root).second.should be_an_instance_of(Courgette::Feature)
    end
    
    it "should glob the path for feature files and get them by path" do
      Courgette.features(Rails.root).map(&:path).should include(Rails.root.join('features/user_eats_rabbits.feature').to_s)
      Courgette.features(Rails.root).map(&:path).should include(Rails.root.join('features/visitor_transforms.feature').to_s)
    end
  end
  
end
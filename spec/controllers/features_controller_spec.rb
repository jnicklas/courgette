require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe FeaturesController do
  
  before { @feature = mock('a feature') }
    
  describe :get => :show, :id => 'user_eats_rabbit' do
    before { Courgette.should_receive(:find).with('user_eats_rabbit').and_return(@feature) }

    it { should respond_with(:success) }
    it { should render_template('features/show') }
    it { should assign_to(:feature, :with => @feature) }
  end
  
  describe :get => :index do    
    before { Courgette.should_receive(:first).and_return(@feature) }
    
    it { should respond_with(:success) }
    it { should render_template('features/show') }
    it { should assign_to(:feature, :with => @feature) }
  end
  
end
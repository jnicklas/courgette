require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe FeaturesController do
  
  before { @feature = mock('a feature') }
    
  describe :get => :show, :id => 'user_eats_rabbit' do
    it { should respond_with(:success) }
    it { should render_template('features/show') }
  end
  
  describe :get => :index do    
    before { Rails.stub!(:root).and_return('rails/root') }
    before { Courgette.should_receive(:features).with('rails/root').and_return([@feature]) }
    
    it { should respond_with(:success) }
    it { should render_template('features/index') }
    it { should assign_to(:features, :with => [@feature]) }
  end
  
end
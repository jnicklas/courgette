require File.join(File.dirname(__FILE__), '..', 'spec_helper')

describe FeaturesController do
  
  mock_models :user
  
  describe :get => :show, :id => 'user_eats_rabbit' do    
    it { should respond_with(:success) }
    it { should render_template('features/show') }
  end
  
  describe :get => :index do    
    it { should respond_with(:success) }
    it { should render_template('features/index') }
  end
  
end
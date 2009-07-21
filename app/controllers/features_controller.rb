class FeaturesController < ApplicationController
  
  layout "courgette"
  
  def index
    @features = Courgette.features(Rails.root)
  end
  
  def show
    
  end
  
end
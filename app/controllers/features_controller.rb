class FeaturesController < ApplicationController
  unloadable
  
  layout "courgette"
  
  def index
    @features = Courgette.features
  end
  
  def show
    @feature = Courgette.find(params[:id])
  end
  
end
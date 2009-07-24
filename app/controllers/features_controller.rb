class FeaturesController < ApplicationController
  unloadable
  
  layout "courgette"
  
  def index
    @feature = Courgette.first
    render "show"
  end
  
  def show
    @feature = Courgette.find(params[:id])
  end
  
end
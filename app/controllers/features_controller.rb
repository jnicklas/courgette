class FeaturesController < ApplicationController
  unloadable
  
  layout "courgette"
  
  def index
    @features = Courgette.features
  end
  
  def show
    render :text => Courgette.find(params[:id]).to_html
  end
  
end
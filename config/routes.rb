ActionController::Routing::Routes.draw do |map|
  map.resources :features, :only => %w(index show)
end
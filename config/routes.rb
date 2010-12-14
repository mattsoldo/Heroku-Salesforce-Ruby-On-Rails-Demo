ActionController::Routing::Routes.draw do |map|
  map.namespace :salesforce do |salesforce|
    salesforce.resources :contacts
    salesforce.resources :leads
  end	

  map.root :controller => "welcome"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

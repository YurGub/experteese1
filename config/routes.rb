Rails.application.routes.draw do
  require 'api_constraints'
  
  
  resources :values
  resources :images
  root 'main#main'
   
  #get 'main/main'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Api definition
  namespace :api, defaults: { format: :json },
            constraints: { subdomain: 'api' }, path: '/' do
    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: true) do
      # http://api.experteese.dev/v1/products/1
      # We are going to list our resources here
      
    end
    
  end
  
  
end

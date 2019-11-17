Rails.application.routes.draw do



  root to:  'vehicles#index'
  get '/vehicles/:id', to: 'vehicles#show', as: 'vehicle'
  delete '/vehicles/:id' , to: 'vehicles#destroy', as: 'destroy_vehicle'
  delete '/vehicles' , to: 'vehicles#destroy_all', as:'destroy_all_vehicles'
  post '/vehicles', to: 'vehicles#create', as: 'save_vehicle'

  post '/vehicles/:id/locations' , to: 'locations#create' , as:'create_location'





end

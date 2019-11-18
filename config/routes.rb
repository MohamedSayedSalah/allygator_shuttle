Rails.application.routes.draw do



  root to:  'vehicles#index'
  get '/last_locations', to: 'vehicles#last_location', as: 'last_locations'
  delete '/vehicles/:id' , to: 'vehicles#destroy', as: 'destroy_vehicle'
  delete '/vehicles' , to: 'vehicles#destroy_all', as:'destroy_all_vehicles'
  delete '/last_locations' , to: 'last_locations#destroy', as: 'destroy_last_locations'
  post '/vehicles', to: 'vehicles#create', as: 'save_vehicle'
  post '/vehicles/:id/locations' , to: 'locations#create' , as:'create_location'





end

Rails.application.routes.draw do


  root  to: 'vehicles#index', as: 'all_vehicles'
  get '/vehicles/:id', to: 'vehicles#show', as: 'vehicle'
  post '/vehicles', to: 'vehicles#create', as: 'create_vehicle'

  post '/vehicles/:id/locations' , to: 'locations#create' , as:'create_location'





end

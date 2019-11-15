Rails.application.routes.draw do



  root to:  'vehicles#index'
  get '/vehicles/:id', to: 'vehicles#show', as: 'vehicle'
  get '/vehicles', to: 'vehicles#signup', as: 'create_vehicle'
  post '/vehicles', to: 'vehicles#create', as: 'save_vehicle'

  post '/vehicles/:id/locations' , to: 'locations#create' , as:'create_location'





end

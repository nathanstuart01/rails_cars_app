Rails.application.routes.draw do
  root 'cars#index'
# shows all the paths for us in CRUD stuff
  resources :cars
end

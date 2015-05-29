Rails.application.routes.draw do
  #resources :places
  # get 'places' => 'places#index'

  get 'places/:zipcode/:limit' => 'places#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'places#home'
end

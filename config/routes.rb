Rails.application.routes.draw do
  devise_for :users
  resources :water_tank_locations
  root 'water_tank_locations#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

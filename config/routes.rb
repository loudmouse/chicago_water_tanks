Rails.application.routes.draw do
  get 'users/show'
  
  devise_for :users
  resources :water_tanks
  resources :users

  root 'water_tanks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

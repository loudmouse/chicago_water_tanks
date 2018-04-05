Rails.application.routes.draw do
  resources :water_tanks
  devise_for :users
  root 'water_tanks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

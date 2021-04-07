Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :heatometers, only: [:edit, :update]
  resources :temperature_ratings, only: [:index, :new, :create]

  root to: 'temperature_ratings#index'
end

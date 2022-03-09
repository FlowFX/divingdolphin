Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  resources :exercises
  resources :movements
  resources :performances
end

Rails.application.routes.draw do
  devise_for :users

  root "movements#index"

  resources :exercises
  resources :movements
end

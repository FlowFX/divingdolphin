Rails.application.routes.draw do
  root "movements#index"

  resources :exercises
  resources :movements
end

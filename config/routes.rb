Rails.application.routes.draw do
  root "movements#index"

  resources :movements
end

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :customers
  resources :rents
end

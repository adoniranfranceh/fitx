Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :customers do
    collection do
      get 'filtered_index'
    end
    resources :rents
  end
end

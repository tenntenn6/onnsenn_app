Rails.application.routes.draw do
  devise_for :companies
  root to: 'spas#index'
  resources :spas, only: [:index, :new, :create, :destroy, :edit, :update]
  resources :companies, only: [:show]

  
end



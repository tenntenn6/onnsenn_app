Rails.application.routes.draw do
  devise_for :companies
  root to: 'spas#index'
  resources :spas
  resources :companies, only: [:show]

  
end



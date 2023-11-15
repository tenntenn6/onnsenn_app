Rails.application.routes.draw do
  devise_for :companies
  root to: 'spas#index'
  resources :spas
    collection do
      get 'search'
    end
  resources :companies, only: [:show]

  
end



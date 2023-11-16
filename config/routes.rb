Rails.application.routes.draw do
  devise_for :companies
  root to: 'spas#index'
  resources :spas do
    collection do
      get 'search'
    end
  end
  resources :companies, only: [:show]
end



Rails.application.routes.draw do
  root to: 'spas#index'
  resources :spas, only: [:index]
end

Rails.application.routes.draw do
  devise_for :companies
<<<<<<< Updated upstream
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
=======
  root to: 'spas#index'
  resources :spas, only: [:index]
>>>>>>> Stashed changes
end

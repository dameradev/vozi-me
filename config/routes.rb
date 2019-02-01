Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :users, only: [:show]
  get "user-profile/:id", to: "users#profile", as: "user_profile"
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

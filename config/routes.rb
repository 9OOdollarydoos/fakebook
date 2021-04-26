Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :posts
  resources :users, only: [:show, :index] 
  resources :requests, only: [:new, :create, :show, :destroy] 
  resources :friendships, only: [:new, :create, :show, :destroy]
  resources :likes, only: [:create, :destroy]

  root to: "posts#index"

end

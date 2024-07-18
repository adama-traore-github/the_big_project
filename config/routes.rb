Rails.application.routes.draw do
  resources :users
  resources :cities
  resources :gossips do
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end
  resources :tags
  resources :comments, only: [:create]
  resources :private_messages, only: [:create]
end

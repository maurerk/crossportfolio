Rails.application.routes.draw do
  resources :stocks
  devise_for :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#index'

  get 'home/about'
  post '/' => 'home#index'
end

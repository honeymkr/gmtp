Rails.application.routes.draw do
  resources :ad_platforms
  devise_for :users

  root 'pages#index'

 # get 'pages/index'
  get 'pages/signup'
  get 'pages/ads'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do




  root 'pages#index'

 # get 'pages/index'
  get 'pages/signup'
  get 'pages/ads'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  
  resources :posts
  # redirects to stripe
  get 'orders/new'
  # redirects to home page on cancel
  get 'orders/cancel'

  # get about page
  get 'pages/about'
  # get contact page
  get 'pages/contact'

  devise_for :users
  resources :products
  resources :orders, only: [:new]
  root to: "products#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

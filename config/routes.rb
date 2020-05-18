Rails.application.routes.draw do
  # get 'orders/new'
  get 'user_product_list/index'
  devise_for :users
  resources :products
  resources :orders, only: [:new]
  root to: "products#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

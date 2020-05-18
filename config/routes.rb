Rails.application.routes.draw do
  get 'orders/new'
  get 'user_product_list/index'
  devise_for :users
  resources :products
  root to: "products#index"

  get "/mylist", to: "user_product_list#index", as: "user_product_list"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

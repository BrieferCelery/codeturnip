Rails.application.routes.draw do
  devise_for :users
  resources :products
  root to: "products#index"

  get "/mylist", to: "user_product_lists#index", as: "user_product_lists"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

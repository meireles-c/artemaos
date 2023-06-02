Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "products#index"
  resources :products do
    resources :orders, only: [:create]
    collection do
      get "my_products"
    end
  end

  resources :orders, only: [:show] do
    collection do
      get "my_orders"
      get "my_sales"
    end
  end
  resources :profiles, only: :show

end

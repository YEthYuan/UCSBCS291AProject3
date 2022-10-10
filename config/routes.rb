Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/users", to: "users#index"
  # Defines the root path route ("/")
  root "posts#index"

  resources :users do
    resources :posts do
      resources :comments
    end
  end

  resources :posts
  resources :comments
end

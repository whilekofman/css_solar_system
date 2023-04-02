Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api, defaults: { format: :json } do
    resources :stars, only: [:index, :show]
    resources :planets, only: [:index, :show]
    resource  :moons, only: [:index, :show]
  end

end

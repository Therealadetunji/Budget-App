Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :groups, only: [:index, :new, :create] do
    resources :entities, only: [:index, :new, :create]
  end

 

  root 'users#index'
end

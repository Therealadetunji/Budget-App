Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get, :post]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
  resources :groups, only: [:index, :new, :create] do
    resources :entities, only: [:index, :new, :create]
  end

  devise_scope  :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

 

  root 'groups#index'
end

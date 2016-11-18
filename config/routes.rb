Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :new, :create] do
    resources :products
  end

  # get '/users/', to: 'users#index'
  #
  # get '/users/new', to: 'users#new'
  #
  # get '/users/:id', to: 'users#show'
  #
  # post '/users', to: 'users#create'
  #
  # get '/users/:user_id/products', to: 'products#index'
  #
  # get '/users/:user_id/products/new', to: 'products#new'
  #
  # post '/users/:user_id/products', to: 'products#create', as: :user_products
  #
  # get '/users/:user_id/products/:id/edit', to: 'products#edit'
  #
  # get '/users/:user_id/products/:id', to: 'products#show'
  #
  # patch '/users/:user_id/products/:id', to: 'products#update', as: :user_product
  #
  # delete '/users/:user_id/products/:id', to: 'products#destroy'

end

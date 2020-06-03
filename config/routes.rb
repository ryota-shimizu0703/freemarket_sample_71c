Rails.application.routes.draw do
  devise_for :users
  root 'items#index'

 resources :items, only: [ :show , :new ]
 resources :users, only: [ :index, :edit, :update, :show]

 get 'addresses', to: 'users#new_address'

end
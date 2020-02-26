Rails.application.routes.draw do
  namespace :admins do
    resources :items, only: [:show, :index, :edit, :new, :create]
    resources :orders, only: [:index, :show]
    resources :genres, only: [:index, :edit]
    resources :customers, only: [:index, :show, :edit, :update]
    get '/admins/homes/top' => "homes#top"
  end



  namespace :customers do
  get '/homes/about' => 'homes#about'
  get '/orders/finish' => 'orders#finish'
  get '/orders/check' => 'orders#check'
  get '/customers/exit' => 'customers#exit'
  get '/cart_item' => 'cart_items#destroy_all'
  resources :orders, only: [:index, :show]
  resources :customers, only: [:show, :edit, :update]
  resources :shipping_addresses, only: [:index, :edit, :create, :destroy]
  resources :cart_items, only: [:index]
  resources :items, only: [:index, :show]
  end

  root "customers/homes#top"


  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :customers, controllers: {
    sessions: 'customers/sessions',
    passwords: 'customers/passwords',
    registrations: 'customers/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

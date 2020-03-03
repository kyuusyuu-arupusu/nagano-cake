Rails.application.routes.draw do
  namespace :admins do
    resources :items, only: [:show, :index, :edit, :new, :create, :update]

    resources :orders, only: [:index, :show]
    resources :genres, only: [:index, :edit, :create, :update]
    resources :customers, only: [:index, :show, :edit, :update]
    get '/admins/homes/top' => "homes#top", as: 'top'
  end



  namespace :customers do
    get '/homes/about' => 'homes#about'
    get '/orders/finish' => 'orders#finish'
    post '/orders/check' => 'orders#check'
    get '/customers/:id/exit' => 'customers#exit'
    delete '/customers/customer_id/cart_items' => 'cart_items#destroy_all'
    resources :orders, only: [:index, :show, :new, :create]
    resources :customers, only: [:show, :edit, :update, :destroy]
    resources :shipping_addresses, only: [:edit, :create, :update, :destroy]
    get '/customers/customers_id/shipping_addresses' => 'shipping_addresses#index'
    resources :cart_items, only: [:create, :update, :destroy]
    get '/customers/customer_id/cart_items' => "cart_items#index"
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

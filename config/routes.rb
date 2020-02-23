Rails.application.routes.draw do
  namespace :admins do
    resources :items, only: [:index, :show, :edit, :new]
    resources :orders, only: [:index, :show]
    resources :genres, only: [:index, :edit]
    resources :customers, only: [:index, :show, :edit]
    get '/admins/homes/top' => "homes#top"
  end



  namespace :customers do
  get '/' => "homes#top"
  get '/homes/about' => 'homes#about'
  get '/orders/finish' => 'orders#finish'
  get '/orders/check' => 'orders#check'
  get '/customers/exit' => 'customers#exit'
  get '/cart_item' => 'cart_items#destroy_all'
  resources :orders, only: [:index, :show]
  resources :customers, only: [:show, :edit]
  resources :shipping_addresses, only: [:index, :edit]
  resources :cart_item, only: [:index]
  resources :item, only: [:index, :show]
  end

  devise_for :admins
  devise_for :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

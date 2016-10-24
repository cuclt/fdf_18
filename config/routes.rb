Rails.application.routes.draw do
  namespace :admin do
    root "users#index"
    resources :users, only: [:index, :destroy]
  end
  root "static_pages#home"
  devise_for :users, controllers: {registrations: "registrations",
    omniauth_callbacks: "users/omniauth_callbacks"}
  resources :products
  resources :carts
  resources :comments
end

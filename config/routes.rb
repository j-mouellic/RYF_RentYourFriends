Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: "friends#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, :only => [:show]

  resources :friends, only: [:show, :index, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index, :edit, :update] do
    get :finished, on: :member
    patch :finished, on: :member
    resources :reviews, only: [:new, :create]
  end
end

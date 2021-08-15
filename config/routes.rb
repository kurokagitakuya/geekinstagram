Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #root"posts#top"
  resources :users, :only => [:index, :show]
  root "users#index"
  resources :messages, :only => [:create]
  resources :rooms, :only => [:create, :show, :index]
  resources :posts do
    resources :likes, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end
end

Rails.application.routes.draw do
 devise_for :users
 resources :users, only: [:index, :show, :edit, :update]
 resources :books, only: [:edit, :show, :index, :create, :update, :destroy]
 get '/home/about' =>'homes#about',as:'about'
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

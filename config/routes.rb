Rails.application.routes.draw do
 devise_for :users
 resources :users, only: [:index, :show, :edit]
 resources :books, only: [:edit, :show, :index]
 
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

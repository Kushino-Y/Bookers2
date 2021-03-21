Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :create, :show, :edit, :update, :destroy]
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

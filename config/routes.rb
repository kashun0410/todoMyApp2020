Rails.application.routes.draw do
  devise_for :users

  root 'todo_lists#index'
  resources :users, only: [:edit, :update]
  resources :todo_lists
end

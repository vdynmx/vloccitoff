Blocitoff::Application.routes.draw do
  root "todos#index"
  devise_for :users
  resources :todos, only: [:new, :create, :show]
end

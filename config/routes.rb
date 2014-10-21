Blocitoff::Application.routes.draw do

  root "application#hello"
  devise_for :users
  resources :todos, only: [:new, :create, :show]
end

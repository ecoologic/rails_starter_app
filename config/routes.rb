Rails.application.routes.draw do
  root 'home_pages#index'

  devise_for :users

  resources :users, only: %i[index show edit update] # Rest done by Devise
  resources :pages
end

Rails.application.routes.draw do
  resources :pages
  root 'home_pages#index'

  devise_for :users

  resources :users, only: %i[index show edit update] # Rest done by Devise
end

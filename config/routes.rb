Rails.application.routes.draw do
  resources :pages
  root 'welcomes#home_page'

  devise_for :users

  resources :users, only: %i[index show edit update] # Rest done by Devise
end

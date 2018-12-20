Rails.application.routes.draw do
  root 'application#home_page'

  devise_for :users

  resources :users, only: %i[index show destroy] # Done by Devise
end

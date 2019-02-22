# In "popularity" order for performance
Rails.application.routes.draw do
  unauthenticated { root 'home#unauthenticated' }
  authenticated { root 'home#authenticated' }

  devise_for :users

  resources :pages
  resources :ranks, only: %i[new]
  resources :answers, only: %i[create update]
  resources :users, only: %i[index show edit update] # The rest is done by Devise
end

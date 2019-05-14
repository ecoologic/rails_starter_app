Rails.application.routes.draw do
  get 'rooms/show'
  unauthenticated { root 'home#unauthenticated' }
  authenticated { root 'home#authenticated' }

  devise_for :users

  resources :users, only: %i[index show edit update] # The rest is done by Devise

  mount ActionCable.server => '/cable'
end

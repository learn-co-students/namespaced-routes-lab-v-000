Rails.application.routes.draw do

  get 'preferences/index'

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do
    resources :preferences, only: [:index]
  end
end

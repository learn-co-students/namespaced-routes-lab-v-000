Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:show,:index]
  end
  resources :songs


  namespace :admin do
      resources :preferences, only:[:index]
    end

  end

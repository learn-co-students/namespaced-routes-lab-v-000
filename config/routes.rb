Rails.application.routes.draw do

  resources :artists, only: [:show, :index] do
    resources :songs, only: [:show, :index]
  end

  resources :songs
  resources :artists
  resources :preferences

  namespace :admin do
    resources :preferences, only: [:index]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  namespace :admin do
    resources :preferences, only: [:index]
  end

  resources :preferences do
    resources :songs, only: [:new]
    resources :artists, only: [:new]
  end

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

end

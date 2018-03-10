Rails.application.routes.draw do

  resources :preferences
  resources :artists do
    resources :songs, only: [:index, :show]
  end

  namespace :admin do
    resources :preferences
  end

  resources :songs

end

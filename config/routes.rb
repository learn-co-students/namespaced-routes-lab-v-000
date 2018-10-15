Rails.application.routes.draw do

  namespace :admin do
    resources :preferences, only: [:index]

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

end

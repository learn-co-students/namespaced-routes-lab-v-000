Rails.application.routes.draw do

  resources :songs

  namespace :admin do
    resources :preferences
  end

  resources :artists do
    resources :songs, only: [:index, :show]
  end
end

Rails.application.routes.draw do

  get 'preferences/index'

  get 'preferences/update'

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do
    resources :preferences, only: [:index, :update]
  end

end

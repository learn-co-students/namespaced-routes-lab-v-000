Rails.application.routes.draw do

  resources :songs
  resources :artists do
    resources :songs, only: [:index, :show]
  end
  namespace :admin do
    resources :preferences
  end

end

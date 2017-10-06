Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  resources :preferences do
    resources :songs, only: [:new]
    resources :artists, only: [:new]
  end
  
  namespace :admin do 
    resources :preferences, only: [:index]
  end

end

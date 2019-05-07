Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :admin do
    resources :preferences, only: [:index]
  end
  resources :artists
  resources :songs

  resources :artists do
    resources :songs, only: [:index, :show]
  end
end


#routes to songs as a nested resource of artist (FAILED - 11)
#routes to a song as a nested resource of an artist (FAILED - 12)

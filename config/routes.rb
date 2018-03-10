Rails.application.routes.draw do

  namespace :admin do
    resources :preferences #do
      #resources :songs, :artists, only: [:index, :new]
    #end
  end

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

end

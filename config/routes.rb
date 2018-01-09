Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  #so creating admin namespace? for preference model. but only for index and update routes
  namespace :admin do
    resources :preferences, only: [:index, :update]
  end

end

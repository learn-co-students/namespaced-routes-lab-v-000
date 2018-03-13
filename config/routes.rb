Rails.application.routes.draw do
      #nested routes
      resources :artists do
        resources :songs, only: [:index, :show]
      end
      resources :songs

      #namespaced routes to organize
      #this is an admin module to seperate its functionality from the user functionality
      namespace :admin do
        resources :preferences, only: [:index, :update]
      end
end

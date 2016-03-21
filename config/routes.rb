Rails.application.routes.draw do

  namespace :admin do
    resources :settings, only: [:index, :update]
    resources :access, only: [:index, :update, :show]
  end

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

end

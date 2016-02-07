Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  namespace :admin do
    resources :settings, only: [:index, :create, :update]
    resources :access, only: [:index, :update]
  end

end

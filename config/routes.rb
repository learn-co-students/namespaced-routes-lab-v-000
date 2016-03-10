Rails.application.routes.draw do
  resources :songs

  namespace :admin do
    resources :settings, only: [:index, :update]
    resources :access, only: [:index, :update]
  end
  resources :artists do
    resources :songs, only: [:index, :show]
  end

end

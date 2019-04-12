Rails.application.routes.draw do
  namespace :admin do
    resources :preferences, only: [:index]
  end

  resources :artists, only: [:index, :new, :create, :edit, :update, :show] do
    resources :songs, only: [:index, :show]
  end

  resources :songs, only: [:index, :new, :create, :edit, :update, :show]
end

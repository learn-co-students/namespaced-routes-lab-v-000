Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  root 'songs#index'

  namespace :admin do
    resources :preferences, only: [:index]
  end

  scope '/admin', module: 'admin' do
    resources :preferences, only: [:index]
  end
end

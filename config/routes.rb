Rails.application.routes.draw do

  namespace :admin do
    get '/preferences/edit'
    get '/preferences', to: 'preferences#index'
  end

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

end

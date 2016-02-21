Rails.application.routes.draw do

  get 'access/index'

  get 'access/update'

  get 'index/update'

  get 'settings/index'

  get 'settings/update'

  get 'settings_controller/index'

  get 'settings_controller/update'

  resources :artists do
    resources :songs, only: [:index, :show]
  end

  resources :songs

  namespace :admin do
    resources :settings, only: [:index, :update]
    resources :access, only: [:index, :update]
  end

end

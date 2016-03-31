Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end


  scope '/admin', module: 'admin' do
   resources :settings, only: [:index, :update]
   resources :access, only: [:index, :update]
 end


  scope '/admin' do
    resources :settings
  end

  namespace :admin do
    resources :settings, only: [:index, :update]
    resources :access, only: [:index, :update]
  end

  resources :artists

  resources :songs

end

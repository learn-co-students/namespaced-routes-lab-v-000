Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

#config/routes.rb
  # namespace :admin do  ##gave me trouble with form_for
  #   resources :preferences, only: [:index, :edit, :update]
  # end

  scope '/admin', module: 'admin' do
    resources :preferences, only: [:index, :edit, :update]
  end
end

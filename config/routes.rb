Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end

  namespace :admin do
    resources :preferences #, only: [:index]
  end
  
  resources :songs
  
end


#scope '/admin' do
  #resources :preferences, only: [:index]
#end 
# with scope the URL is still just 
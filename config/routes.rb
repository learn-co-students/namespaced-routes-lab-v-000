Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

  # https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-10-routes-and-resources/namespaced-routes-lab
  # Create a PreferencesController, routes, and views to manage the preferences.
  # Do this under an Admin module to separate it from the standard user functionality.
  # The artists and songs index pages should order by name according to each preference.
  # new code start
  namespace 'admin' do
    resources :preferences, only: [:index]
  end
  # new code end

end

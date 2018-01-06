Rails.application.routes.draw do

  resources :artists do
    resources :songs, only: [:index, :show]
  end

  resources :songs

  namespace :admin do
    resources :preferences, only: [:index, :show, :update]
  end
  # The URL path to index page of all preferences is prefixed with /admin
  # The URL path to preferences index page is therefore "/admin/preferences"
  # All included routes will be handled by controllers (e.g. PreferencesController) in Admin module
  # Route helper #admin_preferences_path will return string URL path "/admin/preferences"
  # Route is mapped to the #index action (method) in the PreferencesController,
  # which is namespaced within the Admin module

  # Route helper method #admin_preference_path(@preference)
  # returns the string URL path "/admin/preferences/:id"
  # and is mapped to the #show action (method) in PreferencesController,
  # which is namespaced within the Admin module

  # PATCH or PUT request to "/admin/preferences/:id"
  # is mapped to the #update action (method) in the PreferencesController,
  # which is namespaced within the Admin module
end

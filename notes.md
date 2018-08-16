1. When creating a name space route the controller has to also have name space. For example if the controller name is admin then the name space for the controller has to be
class Admin::PreferencesController < ApplicationController

2. the views page has to be setup as admin/preferences/index.html.erb. This is a requirement if you are going to use namespace.

3. The route has to look like this:
namespace :admin do
  resources :preferences, only: [:index]
end

4. 

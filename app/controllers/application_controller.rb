class ApplicationController < ActionController::Base
  include PreferencesHelper
  before_action :set_preferences, only: [:index, :new]
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

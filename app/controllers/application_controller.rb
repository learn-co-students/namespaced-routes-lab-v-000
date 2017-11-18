class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def user_preferences
  	if Preference.last.nil?
  		Preference.new.default
  	else
  		Preference.last
  	end
  end

end

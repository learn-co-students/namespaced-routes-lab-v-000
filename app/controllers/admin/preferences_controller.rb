class Admin::PreferencesController < ActionController::Base
  def index
    @preference = Preference.last
  end
end

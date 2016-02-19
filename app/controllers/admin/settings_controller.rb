class Admin::SettingsController < ApplicationController

  def index
    @preference = Preference.get_or_create
  end

  def update
    current_preference.update(preference_params)
    redirect_to '/admin/settings'
  end
end

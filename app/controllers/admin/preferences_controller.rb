class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.all.first
    @preference ||= Preference.create
  end

  def update
    @preference = Preference.all.first
    @preference.update(preference_params)
    redirect_to(admin_preferences_path)
  end

  private
  def preference_params
    params.require(:preference).permit(:id, :allow_create_artists, :allow_create_songs)
  end

end
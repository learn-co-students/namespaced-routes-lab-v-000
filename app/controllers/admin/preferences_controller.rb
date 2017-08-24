class Admin::PreferencesController < ApplicationController
  def index
    @preferences = Preference.first
  end

  def update
    preferences = Preference.first

    if preferences.update(preference_params)
      redirect_to admin_preferences_path, alert: "Preferences saved."
    else
      render :index, alert: "Your changes were not saved."
    end
  end

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end
end

class Admin::PreferencesController < ApplicationController

  def index
  end

  def edit
    @preference = prefs
  end

  def update
    @preference = prefs
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
  end

end

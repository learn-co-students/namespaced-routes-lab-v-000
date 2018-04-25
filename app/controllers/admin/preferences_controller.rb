class Admin::PreferencesController < ApplicationController

  def index
    @preferences = preferences
  end

  def update
    @preferences = Preference.find(params[:id])
    @preferences.update(preference_params)
    redirect_to admin_preferences_path
  end

  private

  def preference_params
    params.require(:preferences_instance).permit(:song_sort_order, :artist_sort_order, :allows_creation_of_artists, :allows_creation_of_songs)
  end

  def preferences
    preferences ||= Preference.first_or_create({
      song_sort_order: "ASC",
      artist_sort_order: "ASC",
      allow_create_artists: true,
      allow_create_songs: true
    })
  end
end


class Admin::PreferencesController < ApplicationController

  def index
    @preferences = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, artist_sort_order: "ASC", song_sort_order: "DESC")
  end

  def update
    @preferences = Preference.find(params[:id])
    @preferences.update(preferences_params)
    redirect_to admin_preferences_path
  end


  private

  def preferences_params
    params.require(:preference).permit(:allow_create_artists, :allow_create_songs, :artist_sort_order, :song_sort_order)
  end

end

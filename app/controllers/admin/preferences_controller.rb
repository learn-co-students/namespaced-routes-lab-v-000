class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, artist_sort_order: "DESC", song_sort_order: "DESC")
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_artists, :allow_create_songs, :artist_sort_order, :song_sort_order)
  end
 
end
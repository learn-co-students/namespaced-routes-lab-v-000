class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, song_sort_order: "ASC", artist_sort_order: "ASC")
  end
  
  def update
    @preference = Preference.find(params[:id])
    @preference.update(pref_params)
    redirect_to admin_preferences_path
  end
  
  private
  
    def pref_params
      params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_songs, :allow_create_artists)
    end
end
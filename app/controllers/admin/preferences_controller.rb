class Admin::PreferencesController < ApplicationController
  def index
    if Preference.last
      @preferences = Preference.last
    else
      @preferences = Preference.create(song_sort_order: "ASC", artist_sort_order: "ASC", allow_create_songs: true, allow_create_artists: true)
    end
  end
  
  def new
    @preference = Preference.new
  end
  
  def create
    @preference = Preference.create(preference_params)
    redirect_to admin_preferences_path
  end
  
    private

  def preference_params
    params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_artists, :allow_create_songs)
  end
  
end
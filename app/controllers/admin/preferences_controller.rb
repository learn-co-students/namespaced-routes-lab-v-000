class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first_or_create(artist_sort_order: 'DESC', song_sort_order: 'DESC', allow_create_artists: true, allow_create_songs: true)
  end

  private

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end
end

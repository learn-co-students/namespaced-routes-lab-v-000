class Admin::PreferencesController < ApplicationController

  def index
      @preference = Preference.new(artist_sort_order: "DESC", song_sort_order: "ASC", allow_create_artists: true, allow_create_songs: true)
  end

  private
  def preference_params
    params.required(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end

end

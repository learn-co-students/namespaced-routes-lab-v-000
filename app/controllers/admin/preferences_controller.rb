class Admin::PreferencesController < ApplicationController

  def index
    @current_preference = Preference.create(song_sort_order: "DESC", artist_sort_order: "DESC", allow_create_songs: true, allow_create_artists: false)
    @allow_create_songs = @current_preference.allow_create_songs
    @allow_create_artists = @current_preference.allow_create_artists
    @allow_create_songs = @current_preference.allow_create_songs
    @song_order = @current_preference.song_sort_order
    @artist_order = @current_preference.artist_sort_order
  end
end

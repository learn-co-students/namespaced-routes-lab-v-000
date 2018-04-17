class Admin::PreferencesController < ApplicationController

  def index
    @preferences = Preference.first_or_create(song_sort_order: "DESC", artist_sort_order: "DESC", allow_create_songs: true, allow_create_artists: true)
  end
end

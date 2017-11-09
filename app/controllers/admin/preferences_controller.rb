class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.create(artist_sort_order: "ASC",
    song_sort_order: "DESC",
    allow_create_artists: true,
    allow_create_songs: true)

  end
end

class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first_or_create(artist_sort_order: "DESC", allow_create_songs: false, allow_create_artists: false)
  end

end
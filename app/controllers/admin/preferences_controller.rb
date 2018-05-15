class Admin::PreferencesController < ApplicationController
  def index
    @preferences = Preference.first_or_create
  end

  private
  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
  end
end

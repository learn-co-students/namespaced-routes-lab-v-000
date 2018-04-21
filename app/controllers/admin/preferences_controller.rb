class Admin::PreferencesController < ApplicationController

  def index
    set_preferences
  end

  def show
    set_preferences
  end

  private

  def set_preferences
    @preferences = Preference.first
  end

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :songs_sort_order, :allow_create_songs, :allow_create_artists)
  end

end

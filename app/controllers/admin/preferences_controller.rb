class Admin::PreferencesController < ApplicationController

  def index

  end

  def edit

  end

  def update
    preferences.update(preference_params)
    redirect_to admin_preferences_path
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :artist_sort_order, :song_sort_order)
  end

end

class Admin::PreferencesController < ApplicationController
  def index
    @preferences = current_preferences
  end

  def edit
    set_preference
  end

  def update
    set_preference
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  private
  def set_preference
    @preference = Preference.find(params[:id])
  end

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
  end
end

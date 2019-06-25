class Admin::PreferencesController < ApplicationController
  def index
    @preferences = get_preferences
  end

  def update
    @preferences = Preference.find_by(id: params[:id])
    @preferences.update(preferences_params)
    redirect_to admin_preferences_path
  end

  private

  def preferences_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end
end

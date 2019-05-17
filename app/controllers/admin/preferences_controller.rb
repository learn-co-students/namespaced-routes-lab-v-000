class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.create(preference_params)
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  private
    def preference_params
      params.require(:preference).permit(:allow_create_artists, :allow_create_songs, :artist_sort_order, :song_sort_order)
    end
end
class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    redirect_to :index
  end

  private

  def preference_params
    params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_songs, :allow_create_artists)
  end
end

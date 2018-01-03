class Admin::PreferencesController < ApplicationController

  def index
  end

  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.create(preferences_params)
    redirect_to preferences_path(@preference)
  end

  def show
    @preference = Preference.find(params[:id])
  end

  private

  def preferences_params
    params.require(:preferences).permit(:artist_sort_order, :song_sort_order, :allow_create_songs, :allow_create_artists)
  end

end

class Admin::PreferencesController < ApplicationController
  def index
    @preferences = Preference.all
  end

  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.create(preference_params)
    redirect_to admin_preference_path(@preference)
  end

  def show
    raise "made it"
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
  end
end

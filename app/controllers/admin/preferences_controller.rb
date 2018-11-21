class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first
  end

  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)
    if @preference.save
      redirect_to admin_preferences_path
    else
      render :new
    end
  end

  private

  def preference_params
    params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_songs, :allow_create_artists)
  end

end

class Admin::PreferencesController < ApplicationController
  def index
    @preferences = Preference.last
  end

  def create
    @preference = Preference.new(preference_params)
    if @preference.save
      redirect_to @preference
    else 
      render :new
    end
  end

  private

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end
end
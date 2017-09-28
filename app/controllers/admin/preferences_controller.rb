class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.first
  end

  def create
    @preference = Preference.new(preference_params)
    redirect_to admin_preferences_path  
  end

  def new 
    @preference = Preference.new
    if @preference.save
      redirect_to @preference
    else
      render :index
    end
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  private

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end
end
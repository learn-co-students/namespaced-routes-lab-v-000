class Admin::PreferencesController < ApplicationController

  def new
    @prefs = Preference.new
  end

  def show
    @prefs = Preference.find(params[:id])
  end

  def edit
    @prefs = Preference.find(params[:id])
  end

  def create
    @prefs = Preference.create(preference_params)
    redirect_to admin_preference_path(@prefs)
  end

  def update
    @prefs = Preference.find(params[:id])
    @prefs.update(preference_params)
    redirect_to admin_preference_path(@prefs)
  end

  private

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end
end

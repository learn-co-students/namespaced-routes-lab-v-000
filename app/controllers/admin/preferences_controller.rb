class Admin::PreferencesController < ApplicationController

  def index
    @preferences = Preference.all
  end

  def edit
    @preference = Preference.find(params[:id])
  end

  def update
    @preference = Preference.find(params[:id])

    @preference.update(preference_params)

    if @preference.save
      redirect_to admin_preferences_path
    else
      render :edit
    end
  end

  private

  def preference_params
    params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_artists, :allow_create_songs)
  end

end
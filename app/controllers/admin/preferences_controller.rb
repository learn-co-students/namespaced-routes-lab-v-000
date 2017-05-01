class Admin::PreferencesController < ApplicationController
  def index
    # display current preferences
    @preference = Preference.first
  end

  def edit
    @preference = Preference.first
  end

  def update
    @preference = Preference.first
    if @preference.update(preference_params)
      redirect_to admin_preferences_path
    else
      render 'edit'
    end
  end

  private

  def preference_params
    params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_songs, :allow_create_artists)
  end
end

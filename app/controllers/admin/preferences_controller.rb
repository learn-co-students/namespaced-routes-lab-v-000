class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first_or_create(id: 1)
  end

  def update
    @preference = Preference.first
    @preference.update(preference_params)
    redirect_to songs_path
  end

  private

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end

end

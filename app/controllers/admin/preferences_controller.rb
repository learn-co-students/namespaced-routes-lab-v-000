class Admin::PreferencesController < ApplicationController

  def index
    @preferences = Preference.all
  end

  def edit
    @preference = Preference.first
  end

  def update
    @preference = Preference.first
    @preference.update(preference_params)
    redirect_to preference_path(@preference)
  end

  def show
    redirect_to edit_preference_path
  end

  private

    def preference_params
      params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_song_creation, :allow_artist_creation)
    end
end

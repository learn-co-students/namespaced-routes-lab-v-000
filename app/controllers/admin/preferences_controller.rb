class Admin::PreferencesController < ApplicationController
  def index
  end
  
  def new
  end

  def create
    @preference = Preference.new(preferences_params)
    redirect_to admin_preferences_new_path
  end

  def edit
  end
  
  def update
  end

  private

  def preferences_params
    params.require(:preference).permit(
      :artist_sort_order,
      :song_sort_order,
      :allow_create_artists,
      :allow_create_songs
    )
  end
end

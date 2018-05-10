class Admin::PreferencesController < ApplicationController

  def index
    #this sets the initial preferences and sets the @preferences to pass that data on to the index page
    @preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, song_sort_order: "DESC", artist_sort_order: "DESC")
  end

  def update
    #this is the result of someone filling out a form that sends the data here, this updates the preferences based on the params 
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
  end
end

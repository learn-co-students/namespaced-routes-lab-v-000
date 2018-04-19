class Admin::PreferencesController < ApplicationController
  def index
    @preference = current_preference

    if @preference.nil?
      @preference = Preference.create(artist_sort_order: "ASC", song_sort_order: "ASC", allow_create_artists: true, allow_create_songs: true)
    end

  end

  def update
    @preference = Preference.find_by(id: 1).update(preference_params)
    redirect_to admin_preferences_path
  end

  private

    def preference_params
      # "preference"=>{"artist_sort_order"=>"ASC", "allow_create_artists"=>"Yes", "allow_create_songs"=>"Yes"}
      params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
    end

end

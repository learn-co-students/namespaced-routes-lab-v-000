
  class Admin::PreferencesController < ApplicationController
    def index
      @preference = Preference.first_or_create(
        song_sort_order: "DESC",
        artist_sort_order: "DESC",
        allow_create_songs: true,
        allow_create_artists: true
      )
    end

    def update
      @update = Preference.find(params[:id])
      @preference.update(preference_params)
      redirect_to admin_preferences_path
    end


    private

    def preference_params
      params.require(:preference).permit(
        :allow_create_artists,
        :allow_create_songs,
        :song_order,
        :artist_order)
    end

  end

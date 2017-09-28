module Admin
  class PreferencesController < ApplicationController
    def index
      @preference = Preference.create(artist_sort_order: :ASC, song_sort_order: :ASC, allow_create_songs: true, allow_create_artists: true)
    end

    private

    def preference_params
      params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_songs, :allow_create_artists)
    end
  end
end

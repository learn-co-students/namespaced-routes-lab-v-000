class Admin::PreferencesController < ApplicationController

    def index 
        @preferences = Preference.first_or_create(artist_sort_order: "ASC", song_sort_order: "ASC", allow_create_artists: true, allow_create_songs: true)
    end

    private 
    
    def post_params
        params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
      end

end
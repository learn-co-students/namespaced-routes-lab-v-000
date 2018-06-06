class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :load_preferences


  private

    def load_preferences
      @preferences = Preference.first_or_create(artist_sort_order: "DESC", song_sort_order: "ASC", allow_create_artists: true, allow_create_songs: true)
    end 
end

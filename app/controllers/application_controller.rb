class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def get_preferences
    if Preference.first.nil?
      @preferences = Preference.create(artist_sort_order: "DESC", song_sort_order: "ASC", allow_create_artists: false, allow_create_songs: true)
    else
      @preferences = Preference.first
    end
  end

end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def init_preferences
    Preference.create(
      artist_sort_order: "ASC",
      song_sort_order: "ASC",
      allow_create_artists: true,
      allow_create_songs: true
    )
  end

end

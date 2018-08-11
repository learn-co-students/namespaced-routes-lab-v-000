class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def preferences
    if Preference.count == 1
      @preferences = Preference.first
    else
      @preferences = Preference.create(
        allow_create_artists: true,
        allow_create_songs: true,
        song_sort_order: 'ASC',
        artist_sort_order: 'ASC'
      )
    end
  end

  def redirect_if_not_allowed_to_create_artists
    if preferences.allow_create_artists == false
      redirect_to artists_path
    end
  end

  def redirect_if_not_allowed_to_create_songs
    if preferences.allow_create_songs == false
      redirect_to songs_path
    end
  end
end

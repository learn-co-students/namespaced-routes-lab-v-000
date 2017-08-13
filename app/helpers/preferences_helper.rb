module PreferencesHelper

  def preferences
    @preferences = Preference.first_or_create
  end

  def allow_create_songs
    preferences.allow_create_songs
  end

  def allow_create_artists
    preferences.allow_create_artists
  end

  def artist_sort_order
    preferences.artist_sort_order
  end

  def song_sort_order
    preferences.song_sort_order
  end
end

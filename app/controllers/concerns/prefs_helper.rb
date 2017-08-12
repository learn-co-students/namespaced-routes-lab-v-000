module PrefsHelper

  def prefs
    @prefs = Preference.first_or_create(song_sort_order: "DESC", artist_sort_order: "DESC")
  end

  def allow_create_songs?
    prefs.allow_create_songs?
  end

  def allow_create_artists?
    prefs.allow_create_artists?
  end

  def song_sort_order
    prefs.song_sort_order
  end

  def artist_sort_order
    prefs.artist_sort_order
  end

end
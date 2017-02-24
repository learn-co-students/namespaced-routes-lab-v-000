module PreferencesHelper
  def pref_sort_songs(songs)
    # prefs = Preference.first_or_create
    songs.order(title: Preference.first_or_create.song_sort_order.downcase.to_sym)
  end

  def pref_sort_artists(artists)
    # prefs = Preference.first_or_create
    artists.order(name: Preference.first_or_create.artist_sort_order.downcase.to_sym)
  end
end

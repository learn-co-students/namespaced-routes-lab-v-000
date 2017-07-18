module SongsHelper

  def song_sort_preference
    Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, song_sort_order: "ASC", artist_sort_order: "ASC").song_sort_order
  end

  def song_sorted_list(songs, song_sort_preference)
    if song_sort_preference == "ASC"
      songs.sort_by{|song| song.title}
    elsif song_sort_preference == "DESC"
      songs.sort_by{|song| song.title}.reverse
    end
  end

end

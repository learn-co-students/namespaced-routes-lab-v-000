module SongsHelper
  def ordered_songs(songs)
    preference = Preference.first

    if !preference.nil? && !preference.song_sort_order.nil? && preference.song_sort_order == "DESC"
      songs.order(title: :desc)
    else
      songs.order(title: :asc)
    end
  end
end

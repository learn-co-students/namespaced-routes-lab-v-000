module SongsHelper

  def song_order(songs)
    if !Preference.all.empty? && Preference.last.song_sort_order == "DESC"
      songs.order(title: :desc)
    else
      songs.order(:title)
    end
  end
end

module SongsHelper

  def song_sort(songs)
    @prefer |= Preference.last
    if @prefer && @prefer.song_sort_order == "DESC"
      songs.sort_by {|song| -song.id }
    else
      songs.sort_by {|song| song.id }
    end
  end

end

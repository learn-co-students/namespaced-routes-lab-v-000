module SongsHelper

  def songs_to_preference
    if Preference.last
      Song.all.order(id: @preference.song_sort_order.to_sym)
    else
      Song.all
    end
  end

end

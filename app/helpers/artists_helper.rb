module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artists_to_preference
    if Preference.last
      Artist.all.order(id: @preference.artist_sort_order.to_sym)
    else
      Artist.all
    end
  end
end

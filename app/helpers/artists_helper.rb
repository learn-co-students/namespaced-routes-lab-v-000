module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_sort(artists)
    if Preference.last.artist_sort_order == "ASC"
      artists.order("name ASC")
    else
      artists.order("name DESC")
    end
  end
end

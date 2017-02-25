module ArtistsHelper

  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_sort(artists)
    @prefer |= Preference.last
    if @prefer && @prefer.artist_sort_order == "DESC"
      artists.sort_by {|artist| -artist.id }
    else
      artists.sort_by {|artist| artist.id }
    end
  end

end

module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def sort_artists(collection)
    if Preference.artists_order == "ASC"
      collection.sort_by{|a| a.name}
    else
      collection.sort_by{|a| a.name}.reverse
    end
  end
end

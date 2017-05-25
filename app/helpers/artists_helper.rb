module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def sorted_artists(artists)
    sort_order = Preference.new.artist_sort_order
    artists.order("name #{sort_order}")
  end
end

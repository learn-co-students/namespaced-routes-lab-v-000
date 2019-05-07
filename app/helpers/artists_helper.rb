module ArtistsHelper
  def display_artist(song)
    binding.pry
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end
end

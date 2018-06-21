module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end
  #
  # def list_artists(artists, preference)
  #   if preference.artist_sort_order == ASC
  #     artists.name.sort_by {&:downcase}
  #     artists.each do |artist|
  #       link_to artist.name, artist_songs_path(artist)
  #     end
  #   else
  #     artists.sort.reverse
  #   end
  # end
end

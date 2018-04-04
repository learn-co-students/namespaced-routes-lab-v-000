module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def sort_artists
    if @artist.artist
     @artists.each do |artist|
      link_to artist.name, artist_songs_path(artist)
     end
   end 

 end
end

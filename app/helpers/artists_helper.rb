module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def sort_artists(artists)
  end

  def sort_songs(songs)
    if Preference.first.song_sort_order == "ASC"
      @songs = songs.order(:title)
    elsif Preference.first.song_sort_order == "DESC"
      @songs = songs.order(:title).reverse
    else
      @songs = songs
    end
  end
end

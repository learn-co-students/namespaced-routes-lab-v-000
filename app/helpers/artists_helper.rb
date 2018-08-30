module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def sort_song(order)
    if order == "ASC"
      Song.order('title ASC')
    elsif order == "DESC"
      Song.order('title DESC')
    else
      nil
    end
  end

end

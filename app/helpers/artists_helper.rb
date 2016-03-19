module ArtistsHelper

  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def ordered_artists(artists)
    preference = Preference.first
    
    if !preference.nil? && !preference.artist_sort_order.nil? && preference.artist_sort_order == "DESC"
      artists.order(name: :desc)
    else
      artists.order(name: :asc)
    end
  end
end

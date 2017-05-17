module ArtistsHelper

  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def sort_artist_name(artists)
  	if Preference.find_by(artist_sort_order: "ASC")
  		new_sort = artists.sort {|a,b| a.name <=> b.name}
  	else
  		new_sort = artists.sort {|a,b| b.name <=> a.name}
  	end		
  end
end

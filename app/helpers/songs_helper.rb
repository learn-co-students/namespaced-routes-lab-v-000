module SongsHelper

	def sort_song_name(songs)	
	  	if Preference.find_by(song_sort_order: "ASC")
	  		new_sort = songs.sort {|a,b| a.title <=> b.title}
	  	else
	  		new_sort = songs.sort {|a,b| b.title <=> a.title}
	  	end		
  end
end

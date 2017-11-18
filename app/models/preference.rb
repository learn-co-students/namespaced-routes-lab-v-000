class Preference < ActiveRecord::Base

	def default
		artist_sort_order = 'ASC'
		song_sort_order = 'ASC'
		allow_create_artists = true
		allow_create_songs = true
	end

end
class Preference < ActiveRecord::Base
	def self.allow_create_artists?
		self.last.allow_create_artists if self.last
	end

	def self.allow_create_songs?
		self.last.allow_create_songs if self.last
	end

	def self.artist_name_order
		self.last.artist_sort_order if self.last
	end

	def self.song_title_order
		self.last.song_sort_order if self.last
	end
end

class Preference < ActiveRecord::Base

	def self.allow_create_songs
		self.first.allow_create_songs
	end

	def self.allow_create_artists
		self.first.allow_create_artists
	end
end

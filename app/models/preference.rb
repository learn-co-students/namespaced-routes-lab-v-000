class Preference < ActiveRecord::Base

	def self.allow_create_artists
		false
	end

	def self.allow_create_songs
		false
	end


  
end

class Preference < ActiveRecord::Base
	class_attribute :allow_create_artists
	class_attribute :allow_create_songs
end

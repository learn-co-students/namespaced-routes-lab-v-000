class Preference < ActiveRecord::Base
    def self.allow_create_artists
        pref = Preference.first
        pref.allow_create_artists
    end
    
    def self.allow_create_songs
        pref = Preference.first
        pref.allow_create_songs
    end
end
class Preference < ActiveRecord::Base

  def self.current_create_artist_pref
    last.allow_create_artists
  end

  def self.current_song_create_pref
    last.allow_create_songs
  end

end

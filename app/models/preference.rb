class Preference < ActiveRecord::Base

  def self.create_artist?
    !!where(allow_create_artists: false)
  end

  def self.create_song?
    !!where(allow_create_songs: false)
  end
end

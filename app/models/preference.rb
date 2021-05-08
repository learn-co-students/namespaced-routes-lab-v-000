class Preference < ApplicationRecord
  def self.allow_new_artist
    self.first.allow_create_artists
  end

  def self.allow_new_song
    self.first.allow_create_songs
  end
end

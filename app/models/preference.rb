class Preference < ActiveRecord::Base
  def self.create_artists?
    self.first.allow_create_artists
  end

  def self.create_songs?
    self.first.allow_create_songs
  end

  def self.songs_order
    self.first.song_sort_order
  end

  def self.artists_order
    self.first.artist_sort_order
  end
end

class Preference < ActiveRecord::Base

 
  def self.song_sort_order
    self.sort
  end

  def self.artist_sort_order
    self.sort
  end

  def create_song
    Song.new
  end

  def create_artist
    Artist.new
  end


end

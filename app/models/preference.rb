class Preference < ActiveRecord::Base

  def self.allow_new_artists?
    self.last.allow_create_artists
  end

  def self.allow_new_songs?
    self.last.allow_create_songs
  end

end

class Preference < ActiveRecord::Base
  def self.allow_create_artists?
    all.last.allow_create_artists
  end

  def self.allow_create_songs?
    all.last.allow_create_songs
  end
end

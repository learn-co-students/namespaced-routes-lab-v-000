class Preference < ActiveRecord::Base
  def self.allow_create_artists
    @allow_create_artists
  end
  def self.allow_create_songs
    @allow_create_songs
  end
end

class Preference < ActiveRecord::Base

  def self.allow_create_artists
    return @allow_create_artists if defined? @allow_create_artists
    @allow_create_artists = Preference.first.allow_create_artists
  end

  def self.allow_create_songs
    return @allow_create_songs if defined? @allow_create_songs
    @allow_create_songs = Preference.first.allow_create_songs
  end

end

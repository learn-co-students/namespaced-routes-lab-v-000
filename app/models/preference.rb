class Preference < ActiveRecord::Base
  validates :artist_sort_order, inclusion: { in: [ "ASC", "DESC" ] }
  validates :song_sort_order, inclusion: { in: [ "ASC", "DESC" ] }

  def self.allow_create_songs
    Preference.find(1).allow_create_songs
  end
  def self.allow_create_artists
    Preference.find(1).allow_create_artists
  end

end

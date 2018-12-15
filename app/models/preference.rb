class Preference < ActiveRecord::Base

  def self.first
    if self.all.empty?
      self.create(artist_sort_order: "DESC", song_sort_order: "ASC", allow_create_artists: false, allow_create_songs: true)
    end
    self.all.first
  end
end

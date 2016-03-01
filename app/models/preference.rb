class Preference < ActiveRecord::Base
  def default_values
    self.song_sort_order = "DESC"
    self.artist_sort_order = "DESC"
    self.allow_create_artists = true
    self.allow_create_songs = true
    self.save
    self
  end
end

class Preference < ActiveRecord::Base

  def artist_admin
    self.allow_create_artists = true
  end

  def song_admin
    self.allow_create_songs = true
  end

end

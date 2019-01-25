class Preference < ActiveRecord::Base

  def create_artists_enabled?
    allow_create_artists
  end

  def create_songs_enabled?
    allow_create_songs
  end

  def song_sort_order_acending?
    song_sort_order == "ASC"
  end

end

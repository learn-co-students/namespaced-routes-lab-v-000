class Preference < ActiveRecord::Base
  belongs_to :artist
  belongs_to :song

  def allow_create_artist=(x)

  end

  def allow_create_song=(x)

  end

  def artist_sort_order=(x)

  end

  def song_sort_order=(x)

  end


end

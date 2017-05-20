class Preference < ActiveRecord::Base

  def self.song_sort_order
    order(name: :asc)
  end

  def self.artist_sort_order
    order(name: :asc)
  end
end

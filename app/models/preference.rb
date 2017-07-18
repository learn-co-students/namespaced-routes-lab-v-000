class Preference < ActiveRecord::Base
  validates :artist_sort_order, :song_sort_order, inclusion: { in: %w(ASC DESC) }
  validates :allow_create_artists, :allow_create_songs, inclusion: { in: [true, false] }
end

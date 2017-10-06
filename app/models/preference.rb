class Preference < ActiveRecord::Base
  validates :artist_sort_order, inclusion: { in: %w(asc desc)}
  validates :song_sort_order, inclusion: { in: %w(asc desc)}
end

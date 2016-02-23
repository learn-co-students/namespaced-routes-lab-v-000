class Preference < ActiveRecord::Base
  validates :artist_sort_order, :song_sort_order, inclusion: { in: ["ASC", "DESC"]}

end

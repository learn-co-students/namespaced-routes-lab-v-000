class Preference < ActiveRecord::Base

  before_validation :normalize_sort, on: [:create, :update]
  validates :artist_sort_order, :song_sort_order, inclusion: { in: ["ASC", "DESC"], message: "can only be asc or desc"}


  def normalize_sort
    self.artist_sort_order.upcase!
    self.song_sort_order.upcase!
  end

end

class Song < ActiveRecord::Base
  belongs_to :artist
  scope :order_artist_name, -> {order(name: @preferences.artist_sort_order)}


  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end

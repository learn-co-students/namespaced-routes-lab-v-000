class Artist < ActiveRecord::Base
  has_many :songs
  scope :order_artist_name, -> {order(name: @preferences.artist_sort_order)}
end

class Artist < ActiveRecord::Base
  has_many :songs

  def self.ordered_by_name
    pref = Preference.first
    self.order(name: pref.artist_sort_order)
  end
end

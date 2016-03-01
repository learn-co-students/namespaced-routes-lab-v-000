class Artist < ActiveRecord::Base
  has_many :songs

  def self.sorted(preference)
    order("name #{preference.artist_sort_order}")
  end
end

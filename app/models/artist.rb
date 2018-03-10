class Artist < ActiveRecord::Base
  has_many :songs

  def self.sort_artists(preference)
    if preference
      if preference.artist_sort_order.downcase == "asc"
        order(name: :asc)
      elsif preference.artist_sort_order.downcase == "desc"
        order(name: :desc)
      end
    end
  end

end

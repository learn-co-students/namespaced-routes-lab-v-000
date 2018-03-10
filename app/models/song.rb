class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

  def self.sort_songs(preference)
    if preference
      if preference.song_sort_order.downcase == "asc"
        order(title: :asc)
      elsif preference.song_sort_order.downcase == "desc"
        order(title: :desc)
      end
    end
  end

end

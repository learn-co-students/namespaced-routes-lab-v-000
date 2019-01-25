class Song < ActiveRecord::Base
  belongs_to :artist

  def self.all_sorted
    if Preference.first.song_sort_order_acending?
      self.all.sort { |a,b| a.title.downcase <=> b.title.downcase }
    else
      self.all.sort { |a,b| b.title.downcase <=> a.title.downcase }
    end
  end

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end

class Artist < ActiveRecord::Base
  has_many :songs

  def self.sort_asc
    order(name: :ASC)
  end

  def self.sort_desc
    order(name: :DESC)
  end

  def sort_asc_songs
    songs.order(title: :ASC)
  end

  def sort_desc_songs
    songs.order(title: :DESC)
  end
end

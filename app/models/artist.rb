class Artist < ActiveRecord::Base
  has_many :songs
  
  def self.sort_artist_asc
    Artist.all.sort{|x, y| x.name <=> y.name }
  end
  
  def self.sort_artist_desc
    Artist.all.sort{|x, y| y.name <=> x.name }
  end
  
end

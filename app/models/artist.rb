class Artist < ActiveRecord::Base
  has_many :songs

  def self.sort_artist_asc
    Artist.all.sort{|a,b| a <=> b }
  end

  def self.sort_artist_desc
    Artist.all.sort{|a,b| b <=> a }
  end
end

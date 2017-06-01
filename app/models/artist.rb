class Artist < ActiveRecord::Base
  has_many :songs

  def self.ascending
    order("name ASC")
  end

  def self.descending
    order("name DESC")
  end
end

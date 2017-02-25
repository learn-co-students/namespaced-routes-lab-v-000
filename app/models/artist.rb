class Artist < ActiveRecord::Base
  has_many :songs
  # has_one :preference
end

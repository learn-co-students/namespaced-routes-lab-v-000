class Preference < ActiveRecord::Base
  has_many :songs
  has_many :artists
end

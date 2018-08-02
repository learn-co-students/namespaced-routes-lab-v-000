class Artist < ActiveRecord::Base
  has_many :songs
  
  def self.sort_artists
    if Preference.last !=nil
      if Preference.last[:artist_sort_order] == "ASC"
        Artist.order('name ASC')
      else 
        Artist.order('name DESC')
      end 
    else 
      Artist.all
    end
  end  
  
end

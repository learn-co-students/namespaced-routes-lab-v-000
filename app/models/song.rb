class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
  
  def self.sort_songs(songs)
    if Preference.last !=nil
      if Preference.last[:song_sort_order] == "ASC"
        songs.order('title ASC')
      else 
        songs.order('title DESC')
      end 
    else 
      songs
    end
  end  
  
end

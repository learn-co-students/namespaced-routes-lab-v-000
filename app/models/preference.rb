class Preference < ActiveRecord::Base

  def self.song_order
    if Preference.last
      if Preference.last.song_sort_order == "ASC"
        Song.all.order(:title)
      elsif Preference.last_song_sort_order == "DESC"
        Song.all.order(title: :desc)
      end
    else
      Song.all
    end
  end
  
  def self.artist_order
    if Preference.last
      if Preference.last.artist_sort_order == "ASC"
        Artist.all.order(:name)
      elsif Preference.last.artist_sort_order == "DESC"
        Artist.all.order(name: :desc)
      end
    else
      Artist.all    
    end
  end

end
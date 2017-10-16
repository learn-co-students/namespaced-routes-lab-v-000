require 'pry'

class Preference < ActiveRecord::Base

  def song_sort_order
    songs = Song.all 
    sorted_songs = songs.order(:title)
    return sorted_songs.to_s
  end


end

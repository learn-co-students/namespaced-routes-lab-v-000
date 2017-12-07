class Song < ActiveRecord::Base

  belongs_to :artist

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

  def display_order(array)
    if Preference.first.song_sort_order == "ASC"
      array.sort_by { |item| item[:name] }
    elsif Preference.first.song_sort_order == "DESC"
      array.sort_by { |item| item[:name] }.reverse
    else
      self
    end
  end

end

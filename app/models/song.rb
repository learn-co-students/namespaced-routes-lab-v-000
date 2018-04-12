class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

  # def self.artist_sorted
  #   p = Preference.find_or_create_by(id: 1)
  #   if p.artist_sort_order == "ASC"
  #     Artist.all.sort_by {|artist| artist.name}
  #   elsif p.artist_sort_order == "DESC"
  #     (Artist.all.sort_by {|artist| artist.name}).reverse
  #   else
  #     Artist.all
  #   end
  # end
end

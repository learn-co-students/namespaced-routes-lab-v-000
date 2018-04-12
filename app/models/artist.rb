class Artist < ActiveRecord::Base
  has_many :songs

  def self.sorted
    p = Preference.find_or_create_by(id: 1)
    if p.artist_sort_order == "ASC"
      Artist.all.sort_by {|artist| artist.name}
    elsif p.artist_sort_order == "DESC"
      (Artist.all.sort_by {|artist| artist.name}).reverse
    else
      Artist.all
    end
  end
end

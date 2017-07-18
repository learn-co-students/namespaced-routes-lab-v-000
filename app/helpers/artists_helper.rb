module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def artist_sort_preference
    Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, song_sort_order: "ASC", artist_sort_order: "ASC").artist_sort_order
  end

  def artist_sorted_list(artists, artist_sort_preference)
    if artist_sort_preference == "ASC"
      artists.sort_by{|artist| artist.name}
    elsif artist_sort_preference == "DESC"
      artists.sort_by{|artist| artist.name}.reverse
    end
  end
end

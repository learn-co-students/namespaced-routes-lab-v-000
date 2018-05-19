module ArtistsHelper
  def display_artist(song)
    song.artist.nil? ? link_to("Add Artist", edit_song_path(song)) : link_to(song.artist_name, artist_path(song.artist))
  end

  def init_preferences
    Preference.create(
      artist_sort_order: "ASC",
      song_sort_order: "ASC",
      allow_create_artists: true,
      allow_create_songs: true
    )
  end
end

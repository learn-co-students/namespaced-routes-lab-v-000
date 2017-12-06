class ChangeArtistSongOrderToArtistSortOrder < ActiveRecord::Migration
  def change
    rename_column :preferences, :artist_song_order, :artist_sort_order
  end
end

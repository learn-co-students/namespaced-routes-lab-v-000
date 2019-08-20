class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :preferences, :song_sort, :song_sort_order
    rename_column :preferences, :artist_sort, :artist_sort_order
    rename_column :preferences, :allow_new_song, :allow_create_songs
    rename_column :preferences, :allow_new_artist, :allow_create_artists
  end
end

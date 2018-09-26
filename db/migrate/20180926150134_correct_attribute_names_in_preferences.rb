class CorrectAttributeNamesInPreferences < ActiveRecord::Migration
  def change 
    rename_column :preferences, :song_sort, :song_sort_order
    rename_column :preferences, :artist_sort, :artist_sort_order
    rename_column :preferences, :create_songs, :allow_create_songs
    rename_column :preferences, :create_artists, :allow_create_artists
  end
end

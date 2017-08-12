class ChangePreferencesColumns < ActiveRecord::Migration
  def change
    rename_column :preferences, :song_sort, :song_sort_order
    rename_column :preferences, :artist_sort, :artist_sort_order
    add_column :preferences, :allow_create_songs, :boolean
    add_column :preferences, :allow_create_artists, :boolean
  end
end

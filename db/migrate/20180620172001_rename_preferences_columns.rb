class RenamePreferencesColumns < ActiveRecord::Migration
  def change
    rename_column :preferences, :create_new_songs, :allow_create_songs
    rename_column :preferences, :create_new_artists, :allow_create_artists
  end
end

class UpdatePreferences < ActiveRecord::Migration
  def change
    rename_column :preferences, :allowing_creation_of_new_songs, :allow_create_songs
    rename_column :preferences, :allowing_creation_of_new_artists, :allow_create_artists
  end
end

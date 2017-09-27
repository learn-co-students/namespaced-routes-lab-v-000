class RenameColumnPreferences < ActiveRecord::Migration
  def change
  	rename_column :preferences, :allow_create_artist, :allow_create_artists
  	rename_column :preferences, :allow_create_song, :allow_create_songs

  end
end

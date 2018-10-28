class RenameColumn < ActiveRecord::Migration
  def change
   rename_column :preferences, :allow_song_creation, :allow_create_songs
   rename_column :preferences, :allow_artist_creation, :allow_create_artists

  end
end

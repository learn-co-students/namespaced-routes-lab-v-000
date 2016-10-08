class EditColumnNamesPreferences < ActiveRecord::Migration
  def change
    remove_column :preferences, :allow_new_song, :boolean
    remove_column :preferences, :allow_new_artist, :boolean
    add_column :preferences, :allow_create_artists, :boolean
    add_column :preferences, :allow_create_songs, :boolean 
  end
end

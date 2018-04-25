class ChangeColumnsInPreferences < ActiveRecord::Migration
  def change
    remove_column :preferences, :allow_create_artist
    remove_column :preferences, :allow_create_song

    add_column :preferences, :allow_create_artists, :boolean, default: false
    add_column :preferences, :allow_create_songs, :boolean, default: true
  end
end

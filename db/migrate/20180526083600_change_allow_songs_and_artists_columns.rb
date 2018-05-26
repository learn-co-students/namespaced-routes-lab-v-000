class ChangeAllowSongsAndArtistsColumns < ActiveRecord::Migration
  def change
    remove_column :preferences, :allow_create_artists
    remove_column :preferences, :allow_create_songs
    add_column :preferences, :allow_create_artists, :boolean, null: false, default: false
    add_column :preferences, :allow_create_songs, :boolean, null: false, default: false
  end
end

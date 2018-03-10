class ChangeNameOfAdd < ActiveRecord::Migration
  def change
    rename_column :preferences, :add_songs, :allow_create_songs
    rename_column :preferences, :add_artists, :allow_create_artists
  end
end

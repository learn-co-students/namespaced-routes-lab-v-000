class ChangeColumnName < ActiveRecord::Migration
  def change
		rename_column :preferences, :new_artists, :allow_create_artists
		rename_column :preferences, :new_songs, :allow_create_songs
  end
end

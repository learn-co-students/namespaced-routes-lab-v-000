class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :preferences, :allow_song_creation, :allow_create_songs
  end
end

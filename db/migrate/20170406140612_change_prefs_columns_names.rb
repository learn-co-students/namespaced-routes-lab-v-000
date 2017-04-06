class ChangePrefsColumnsNames < ActiveRecord::Migration
  def change
      rename_column :preferences, :can_create_new_artists, :allow_create_artists
      rename_column :preferences, :can_create_new_songs, :allow_create_songs
  end
end

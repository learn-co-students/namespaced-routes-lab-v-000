class AllowCreateSongsColumnPreferences < ActiveRecord::Migration
  def change
    rename_column :preferences, :allow_new_songs, :allow_create_songs
  end
end
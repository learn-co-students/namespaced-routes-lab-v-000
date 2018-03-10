class ChangePreferenceColumnName < ActiveRecord::Migration
  def change
    rename_column :preferences, :allow_create_artist, :allow_create_artists
  end
end

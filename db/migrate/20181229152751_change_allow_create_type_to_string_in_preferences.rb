class ChangeAllowCreateTypeToStringInPreferences < ActiveRecord::Migration
  def change
    change_column :preferences, :allow_create_songs, :boolean
    change_column :preferences, :allow_create_artists, :boolean
  end
end

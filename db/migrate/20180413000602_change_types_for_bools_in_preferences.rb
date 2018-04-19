class ChangeTypesForBoolsInPreferences < ActiveRecord::Migration[5.2]
  def change
    change_column :preferences, :allow_create_artists, :boolean
    change_column :preferences, :allow_create_songs, :boolean
  end
end

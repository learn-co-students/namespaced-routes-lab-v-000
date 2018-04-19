class AddAllowFieldsToPreferences < ActiveRecord::Migration[5.2]
  def change
    add_column :preferences, :allow_create_artists, :bool
    add_column :preferences, :allow_create_songs, :bool
  end
end

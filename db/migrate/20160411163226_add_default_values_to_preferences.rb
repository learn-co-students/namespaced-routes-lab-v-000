class AddDefaultValuesToPreferences < ActiveRecord::Migration
  def change
    change_column_default(:preferences, :allow_create_songs, true)
    change_column_default(:preferences, :allow_create_artists, true)
  end
end

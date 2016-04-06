class AddPermissionsDefaultsToPreferences < ActiveRecord::Migration
  def change
    change_column_default :preferences, :allow_create_artists, true
    change_column_default :preferences, :allow_create_songs, true
  end
end

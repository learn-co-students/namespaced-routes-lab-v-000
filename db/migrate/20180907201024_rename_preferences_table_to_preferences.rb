class RenamePreferencesTableToPreferences < ActiveRecord::Migration
  def change
    rename_table :preferences_tables, :preferences
  end
end

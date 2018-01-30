class ChangeColumnsInPreferences < ActiveRecord::Migration
  def change
    change_column :preferences, :allow_create_songs, :boolean, :default => true
    change_column :preferences, :allow_create_artists, :boolean, :default => false
  end
end

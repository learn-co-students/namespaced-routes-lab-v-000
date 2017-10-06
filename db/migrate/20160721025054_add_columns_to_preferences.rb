class AddColumnsToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :allow_create_artists, :boolean, :default => true
    add_column :preferences, :allow_create_songs, :boolean, :default => true
  end
end

class AddAllowToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :allow_create_artists, :boolean
    add_column :preferences, :allow_create_songs, :boolean
  end
end

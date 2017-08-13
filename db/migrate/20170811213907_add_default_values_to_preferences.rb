class AddDefaultValuesToPreferences < ActiveRecord::Migration
  def change
    change_column :preferences, :artist_sort_order, :string, default: "DESC"
    change_column :preferences, :song_sort_order, :string, default: "DESC"
    change_column :preferences, :allow_create_artists, :boolean, default: false
    change_column :preferences, :allow_create_songs, :boolean, default: true
  end
end

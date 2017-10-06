class AddCreationAndSortToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :allow_create_artists, :boolean, default: true
    add_column :preferences, :allow_create_songs, :boolean, default: true
    add_column :preferences, :artist_sort_order, :string, default: "ASC"
    add_column :preferences, :song_sort_order, :string, default: "ASC"
  end
end





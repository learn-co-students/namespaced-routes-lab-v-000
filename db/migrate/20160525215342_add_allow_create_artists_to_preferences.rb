class AddAllowCreateArtistsToPreferences < ActiveRecord::Migration
  def change

    remove_column :preferences, :song_order
    remove_column :preferences, :artist_order
    add_column :preferences, :artist_sort_order, :string
    add_column :preferences, :song_sort_order, :string
    add_column :preferences, :allow_create_artists, :boolean
    add_column :preferences, :allow_create_songs, :boolean
  end
end

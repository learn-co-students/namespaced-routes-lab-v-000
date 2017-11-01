class AddColumnsToPreferences < ActiveRecord::Migration
  def change
    add_column :preferences, :artist_sort_order, :string
    add_column :preferences, :allow_create_songs, :boolean
  end
end

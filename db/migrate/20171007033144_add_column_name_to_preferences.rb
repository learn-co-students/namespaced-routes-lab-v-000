class AddColumnNameToPreferences < ActiveRecord::Migration
  def change
    add_column :Preferences, :allow_create_artists, :boolean
    add_column :Preferences, :allow_create_songs, :boolean
    add_column :Preferences, :song_sort_order, :string
    rename_column :Preferences, :sort_order, :artist_sort_order
  end
end

class AddDefaultValueToSortOrder < ActiveRecord::Migration
  def change
    change_column :preferences, :song_sort_order, :string, :default => "desc"
    change_column :preferences, :artist_sort_order, :string, :default => "desc"
  end
end

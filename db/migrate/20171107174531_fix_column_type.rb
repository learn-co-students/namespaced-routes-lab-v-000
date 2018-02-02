class FixColumnType < ActiveRecord::Migration
  def self.up
    change_column :preferences, :song_sort_order, :string
    change_column :preferences, :artist_sort_order, :string
  end

  def self.down
    cchange_column :preferences, :song_sort_order, :integer
    change_column :preferences, :artist_sort_order, :integer
  end
end

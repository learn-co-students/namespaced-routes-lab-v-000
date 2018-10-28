class ChangeColumnNames < ActiveRecord::Migration
  def change
    rename_column :preferences, :song_order, :song_sort_order
    rename_column :preferences, :artist_order, :artist_sort_order
  end
end

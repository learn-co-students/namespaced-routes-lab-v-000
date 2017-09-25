class UpdateSongSortOrderColumnName < ActiveRecord::Migration
  def change
    rename_column :preferences, :song_sort_order.class, :song_sort_order
  end
end

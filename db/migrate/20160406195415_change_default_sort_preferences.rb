class ChangeDefaultSortPreferences < ActiveRecord::Migration
  def change
    change_column_default :preferences, :artist_sort_order, "DESC"
    change_column_default :preferences, :song_sort_order, "DESC"
  end
end

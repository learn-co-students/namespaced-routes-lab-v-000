class SetPreferenceDefaults < ActiveRecord::Migration
  def change
    change_column_default :preferences, :artist_sort_order, "ASC"
    change_column_default :preferences, :song_sort_order, "ASC"

  end
end

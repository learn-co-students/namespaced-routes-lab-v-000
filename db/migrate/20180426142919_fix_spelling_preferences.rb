class FixSpellingPreferences < ActiveRecord::Migration
  def change
  	rename_column :preferences, :song_sort_orser, :song_sort_order
  end
end

class AddColumsToPreference < ActiveRecord::Migration
  def change
    change_table :preferences do |t|
      t.string :song_sort_order
      t.string :artist_sort_order
      t.boolean :allow_create_songs
      t.remove :artist_sort, :song_sort
    end
  end
end

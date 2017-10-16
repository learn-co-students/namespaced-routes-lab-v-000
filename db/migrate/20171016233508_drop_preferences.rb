class DropPreferences < ActiveRecord::Migration
  def change
    drop_table :preferences do |t|
      t.string :song_sort_order
      t.string :artist_sort_order
      t.boolean :allow_create_artists
      t.boolean :allow_create_songs
    end 
  end
end

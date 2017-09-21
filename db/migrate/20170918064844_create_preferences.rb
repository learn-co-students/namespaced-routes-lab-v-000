class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :artist_sort_order
      t.string :song_sort_order
      t.string :allow_create_artists
      t.string :allow_create_songs
    end
  end
end

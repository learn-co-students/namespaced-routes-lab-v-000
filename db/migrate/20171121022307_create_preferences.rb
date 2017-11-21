class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.text :song_sort_order
      t.text :artist_sort_order
      t.boolean :allow_create_songs
      t.boolean :allow_create_artists
    end
  end
end

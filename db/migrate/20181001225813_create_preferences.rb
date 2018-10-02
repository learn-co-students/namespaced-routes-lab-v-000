class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :song_sort_order
      t.string :artist_sort_order
      t.boolean :allowing_creation_of_new_songs
      t.boolean :allowing_creation_of_new_artists
    end
  end
end

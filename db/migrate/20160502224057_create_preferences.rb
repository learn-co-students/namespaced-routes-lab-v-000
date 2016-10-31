class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_artists, :allow_create_songs
      t.string :artist_sort_order, :song_sort_order

      t.timestamps null: false
    end
  end
end

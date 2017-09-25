class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :artist_sort_order
      t.string :song_sort_order.class
      t.boolean :allow_create_artists, default: false, null: false
      t.boolean :allow_create_songs, default: true, null: false

      t.timestamps null: false
    end
  end
end

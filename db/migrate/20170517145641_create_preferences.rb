class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :song_sort_order
      t.string :artist_sort_order
      t.boolean :allow_create_songs, null: false, default: false
      t.boolean :allow_create_artists, null: false, default: false

      t.timestamps null: false
    end
  end
end

class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :artist_sort_order
      t.string :song_sort_order
      t.boolean :allow_create_songs
      t.string :allow_create_artists_boolean

      t.timestamps null: false
    end
  end
end

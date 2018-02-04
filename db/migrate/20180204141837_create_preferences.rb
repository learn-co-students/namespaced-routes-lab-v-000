class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :artist_sort_order
      t.string :song_sort_order
      t.boolean :allow_create_songs, null: false, default: true
      t.boolean :allow_create_artists, null: false, default: true
      t.timestamps null: false
    end
  end
end

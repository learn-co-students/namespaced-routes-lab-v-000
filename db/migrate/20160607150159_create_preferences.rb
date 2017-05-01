class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :song_sort_order, default: "desc"
      t.string :artist_sort_order, default: "desc"
      t.boolean :allow_create_artists, default: true
      t.boolean :allow_create_songs, default: true

      t.timestamps null: true
    end
  end
end

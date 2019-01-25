class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :song_sort_order
      t.string :artist_sort_order
      t.boolean :allow_song_creation
      t.boolean :allow_artist_creation

      t.timestamps null: false
    end
  end
end

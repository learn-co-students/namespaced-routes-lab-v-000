class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :song_sort_order
      t.string :artist_sort_order
      t.boolean :allow_new_song
      t.boolean :allow_new_artist
        

      t.timestamps null: false
    end
  end
end

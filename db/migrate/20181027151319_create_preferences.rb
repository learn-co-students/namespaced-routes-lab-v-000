class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
			t.boolean :song_sort_asc
			t.boolean :artist_sort_asc
			t.boolean :new_songs
			t.boolean :new_artists

      t.timestamps null: false
    end
  end
end

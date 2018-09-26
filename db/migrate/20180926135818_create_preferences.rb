class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.text :song_sort
      t.text :artist_sort
      t.boolean :create_songs
      t.boolean :create_artists

      t.timestamps null: false
    end
  end
end

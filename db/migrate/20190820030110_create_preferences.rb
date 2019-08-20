class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.string :song_sort
      t.string :artist_sort
      t.boolean :allow_new_song
      t.boolean :allow_new_artist

      t.timestamps
    end
  end
end

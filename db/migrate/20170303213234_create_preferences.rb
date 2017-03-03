class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :artist_sort_order, default: "DESC"
      t.string :song_sort_order, default: "DESC"
      t.boolean :allow_create_artists, default: false
      t.boolean :allow_create_songs, default: false
    end
  end
end

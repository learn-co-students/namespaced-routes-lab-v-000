class NewMigration < ActiveRecord::Migration
  def change
    create_table :preferences do |p|
      p.string :song_sort_order
      p.string :artist_sort_order
      p.boolean :allow_create_artists
      p.boolean :allow_create_songs
    end 
  end
end

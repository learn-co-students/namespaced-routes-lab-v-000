class FixColumnNames < ActiveRecord::Migration
  def change
    change_table :preferences do |t|
      t.rename :allow_create_artist, :allow_create_artists
      t.rename :allow_create_song, :allow_create_songs
    end
  end
end

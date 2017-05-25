class ChangeCreateSongAndArtistColumnNames < ActiveRecord::Migration
  def change
    change_table :preferences do |t|
      t.rename :create_new_song, :allow_create_songs
      t.rename :create_new_artist, :allow_create_artists
    end
  end
end

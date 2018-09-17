class CreateSongs < ActiveRecord::Migration
  def change
    t.string   "title"
    t.integer  "artist_id"
    t.index ["artist_id"], name: "index_songs_on_artist_id"
    end
  end
end

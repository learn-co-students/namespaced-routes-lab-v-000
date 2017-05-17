
ActiveRecord::Schema.define(version: 20170517224841) do

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "preferences", force: :cascade do |t|
    t.string  "artist_sort_order"
    t.string  "song_sort_order"
    t.boolean "allow_create_artists", default: false
    t.boolean "allow_create_songs",   default: true
  end

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "artist_id"
  end

  add_index "songs", ["artist_id"], name: "index_songs_on_artist_id"

end

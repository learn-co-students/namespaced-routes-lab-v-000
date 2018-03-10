class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :artist_sort_order, inclusion: { in: %w(desc asc),
    message: "%{value} is not a valid " }, default: "desc"
      t.string :song_sort_order, inclusion: { in: %w(desc asc),
    message: "%{value} is not a valid " }, default: "desc"
      t.boolean :allow_create_artists, default: false
      t.boolean :allow_create_songs, default: false

      t.timestamps null: false
    end
  end
end

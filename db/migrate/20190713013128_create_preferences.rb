class CreatePreferences < ActiveRecord::Migration[5.0]
  # rails g migration create_preferences allow_create_artists:boolean allow_create_songs:boolean artist_sort_order:string song_sort_order:string --no-test-framework
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_artists
      t.boolean :allow_create_songs
      t.string :artist_sort_order
      t.string :song_sort_order
    end
  end
end

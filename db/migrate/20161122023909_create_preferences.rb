class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_artists, default: false
      t.boolean :allow_create_songs, default: false 
      t.integer :artist_id
      
      t.timestamps null: false
    end
  end
end

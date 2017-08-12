class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :song_sort
      t.string :artist_sort

      t.timestamps null: false
    end
  end
end

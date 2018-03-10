class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.string :song_order, default: 'asc'
      t.string :artist_order, default: 'asc'

      t.timestamps null: false
    end
  end
end

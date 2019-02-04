class CreatePreferences < ActiveRecord::Migration
  def change
    create_table :preferences do |t|
      t.boolean :allow_create_artists
  
      t.timestamps null: false
    end
  end
end

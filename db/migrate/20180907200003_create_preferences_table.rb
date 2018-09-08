class CreatePreferencesTable < ActiveRecord::Migration
  def change
    create_table :preferences_tables do |t|
      t.boolean :artist_sort
      t.boolean :song_sort
    end
  end
end

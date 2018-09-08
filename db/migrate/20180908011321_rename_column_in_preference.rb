class RenameColumnInPreference < ActiveRecord::Migration
  def change
        change_table :preferences do |t|
          t.integer :artist_id
          t.integer :song_id
        end
  end
end

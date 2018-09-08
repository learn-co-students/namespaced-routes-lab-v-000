class CleanUpTables < ActiveRecord::Migration
  def change
    change_table :preferences do |t|
      t.remove :artist_id, :song_id
    end

    change_table :artists do |t|
      t.remove :preference_id
    end

  end
end

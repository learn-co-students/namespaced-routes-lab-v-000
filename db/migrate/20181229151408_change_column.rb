class ChangeColumn < ActiveRecord::Migration
  def change
    change_table :preferences do |t|
      t.change :preferences, :allow_create_songs, :boolean
      t.change :preferences, :allow_create_artists, :boolean
    end
  end
end

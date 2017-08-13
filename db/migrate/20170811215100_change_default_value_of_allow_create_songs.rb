class ChangeDefaultValueOfAllowCreateSongs < ActiveRecord::Migration
  def change
    change_column :preferences, :allow_create_songs, :boolean, default: false
  end
end

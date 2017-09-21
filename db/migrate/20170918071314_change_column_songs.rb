class ChangeColumnSongs < ActiveRecord::Migration
  def change
    change_column :preferences, :allow_create_songs, :boolean
  end
end

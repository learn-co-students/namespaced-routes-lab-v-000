class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :preferences, :allow_create_artists, :boolean
  end
end

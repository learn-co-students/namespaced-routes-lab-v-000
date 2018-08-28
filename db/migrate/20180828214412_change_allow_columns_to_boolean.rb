class ChangeAllowColumnsToBoolean < ActiveRecord::Migration
  def change
    change_column :preferences, :allow_create_artists, :boolean
    change_column :preferences, :allow_create_songs, :boolean
  end
end

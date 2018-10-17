class AddColumnToPreference < ActiveRecord::Migration
  def change
    add_column :preferences, :allow_create_artists, :boolean
  end
end

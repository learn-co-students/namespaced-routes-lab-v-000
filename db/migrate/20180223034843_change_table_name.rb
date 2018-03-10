class ChangeTableName < ActiveRecord::Migration
  def change
    rename_table :perferences, :preferences
  end
end

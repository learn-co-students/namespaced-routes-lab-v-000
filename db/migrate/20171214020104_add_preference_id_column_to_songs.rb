class AddPreferenceIdColumnToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :preference_id, :integer
  end
end

class AddPreferenceIdColumnToArtists < ActiveRecord::Migration
  def change
    add_column :artists, :preference_id, :integer
  end
end

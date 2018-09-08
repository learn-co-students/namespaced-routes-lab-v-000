class RenameColumnInArtist < ActiveRecord::Migration
  def change
    rename_column :artists, :preference, :preference_id
  end
end

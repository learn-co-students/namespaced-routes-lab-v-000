class AddPreferenceColumnToArtist < ActiveRecord::Migration
  def change
    change_table :artists do |t|
      t.integer :preference
    end
  end
end

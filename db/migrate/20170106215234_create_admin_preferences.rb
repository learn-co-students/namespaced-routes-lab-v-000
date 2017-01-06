class CreateAdminPreferences < ActiveRecord::Migration
  def change
    create_table :admin_preferences do |t|
      t.string :song_sort_order
      t.string :artist_sort_order

      t.timestamps null: false
    end
  end
end

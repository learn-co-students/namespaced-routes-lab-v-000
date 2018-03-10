class CreateAdminPreferences < ActiveRecord::Migration
  def change
    create_table :admin_preferences do |t|

      t.timestamps null: false
    end
  end
end

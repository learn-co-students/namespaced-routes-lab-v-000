class RemoveAllowCreateArtistsBooleanFromPreferences < ActiveRecord::Migration
  def change
    remove_column :preferences, :allow_create_artists_boolean, :string
  end
end

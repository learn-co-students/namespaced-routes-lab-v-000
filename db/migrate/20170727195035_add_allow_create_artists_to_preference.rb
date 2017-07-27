class AddAllowCreateArtistsToPreference < ActiveRecord::Migration
  def change
    add_column :preferences, :allow_create_artists, :boolean, default: false
    add_column :preferences, :allow_create_songs, :boolean, default: true
  end
end

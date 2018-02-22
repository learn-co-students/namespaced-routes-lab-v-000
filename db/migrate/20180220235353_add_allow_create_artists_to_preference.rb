class AddAllowCreateArtistsToPreference < ActiveRecord::Migration
  def change
    add_column :preferences, :allow_create_artists, :string
    add_column :preferences, :allow_create_songs, :string
  end
end

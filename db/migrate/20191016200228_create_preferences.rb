# https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-10-routes-and-resources/namespaced-routes-lab
# Create a Preference model that will store preferences for the app.
# It will need to have fields for: ...

# This was made with: $ rails g migration CreatePreferences --no-test-framework
# new code start
class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|

    # this code was inserted manually
    # new code start
    # ... Song sort order (e.g. "ASC" or "DESC").
    # This will be used to control the default sort order on the /songs page.
    t.string :song_sort_order

    # Artist sort order.
    # This will be used to control the default sort order on the /artists page.
    t.string :artist_sort_order

    # Allowing creation of new songs.
    # Used to control the ability to add new songs to the system.
    t.boolean :allow_create_songs

    # Allowing creation of new artists. Used to control the ability to add new
    # artists to the system. Note: There will only be 1 instance of Preference,
    # not a preference associated with each artist/song.
    t.boolean :allow_create_artists
    
    t.timestamps
    # new code end

    end
  end
end
# new code end

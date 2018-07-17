# Namespaced Routes Lab

admin_preferences GET    /admin/preferences(.:format)            admin/preferences#index
                      POST   /admin/preferences(.:format)            admin/preferences#create
 new_admin_preference GET    /admin/preferences/new(.:format)        admin/preferences#new
edit_admin_preference GET    /admin/preferences/:id/edit(.:format)   admin/preferences#edit
     admin_preference GET    /admin/preferences/:id(.:format)        admin/preferences#show
                      PATCH  /admin/preferences/:id(.:format)        admin/preferences#update
                      PUT    /admin/preferences/:id(.:format)        admin/preferences#update
                      DELETE /admin/preferences/:id(.:format)        admin/preferences#destroy
         artist_songs GET    /artists/:artist_id/songs(.:format)     songs#index
          artist_song GET    /artists/:artist_id/songs/:id(.:format) songs#show
              artists GET    /artists(.:format)                      artists#index
                      POST   /artists(.:format)                      artists#create
           new_artist GET    /artists/new(.:format)                  artists#new
          edit_artist GET    /artists/:id/edit(.:format)             artists#edit
               artist GET    /artists/:id(.:format)                  artists#show
                      PATCH  /artists/:id(.:format)                  artists#update
                      PUT    /artists/:id(.:format)                  artists#update
                      DELETE /artists/:id(.:format)                  artists#destroy
                songs GET    /songs(.:format)                        songs#index
                      POST   /songs(.:format)                        songs#create
             new_song GET    /songs/new(.:format)                    songs#new
            edit_song GET    /songs/:id/edit(.:format)               songs#edit
                  song GET    /songs/:id(.:format)                    songs#show
                      PATCH  /songs/:id(.:format)                    songs#update
                      PUT    /songs/:id(.:format)                    songs#update
                      DELETE /songs/:id(.:format)                    songs#destroy

## Objectives

1. Organize controllers using a module.
2. Use namespaced routes.

## Overview

We're going to add some administrative functions to our song library.
Using what we learned about namespaced routes and module scope, we'll
organize our controllers and routes under an `admin` namespace to keep
them separate from the regular user functions.

## Instructions

The base application has been provided with tests. Make sure to run
`rake db:seed` to set up seed data. Tests can be run with `rspec`.

**Note:** Since we're building new features on an existing project that
already has tests, part of the job is to make sure the tests that
already pass at the beginning still pass when you're done!

1. Create a `Preference` model that will store preferences for the app. It will need
   to have fields for:
   * Song sort order (e.g. `"ASC"` or `"DESC"`). This will be used to control the default sort order on the `/songs` page.
   * Artist sort order. This will be used to control the default sort order on the `/artists` page.
   * Allowing creation of new songs. Used to control the ability to add new songs to the system.
   * Allowing creation of new artists. Used to control the ability to add new artists to the system.
2. Create a `PreferencesController`, routes, and views to manage the preferences. Do this under an `Admin` module to separate it from the standard user functionality.
3. Update the artists and songs `index` pages to order by `name` according to each preference.
4. Update the `songs#new` and `artists#new` actions to check that creating new songs or artists is enabled, and redirect to `/songs` and `/artists`, respectively, if that preference is disabled.
5. Make sure tests pass.
6. Ride the bull. Feel the flow.

![Happy Gilmore](http://i.giphy.com/h2Q9ZYee54UOk.gif)

<p data-visibility='hidden'>View <a href='https://learn.co/lessons/namespaced-routes-lab' title='Namespaced Routes Lab'>Namespaced Routes Lab</a> on Learn.co and start learning to code for free.</p>

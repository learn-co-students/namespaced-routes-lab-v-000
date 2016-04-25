x 1. Build a Preference Model.
 -- Song Sort order 'asc' or 'desc'. This will be used to control the
    default sort order on the /songs page.
 -- Artist sort order. This will be used to control the default sort
    order on the /artists page.
 -- Allowing creation of new songs. Used to control the ability to add
    new songs to the system.
 -- Allowing creation of new artists. Used to control the ability to
    add new artists to the system.
2. Create a PreferencesController, routes and views to manage the
   preferences. Do this under an Admin module to seperate it from the
   standard user functionality.
3. Update the artists and songs index pages to order by name according
   to each preference.
4. Update the songs#new and artists#new actions to check that creating
   new songs or artists is enabled, and redirects to /songs and artists,
   if that preference is disabled.

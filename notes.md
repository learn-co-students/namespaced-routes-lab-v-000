Add a preferences feature for the app, which will allows us to manipulate what the app can and cannot do.
  We want to control:

  1. The song sort order on /songs page (ASC or DESC).
  2. The artist sort order on /artists page.
  3. Turn on / off the ability to add new songs to the sytem.
  4. Control the ability to add new artists to the system.

  *There will only be one instance of Preference that has all the parameters / choices for the entire app

Once we have the model set up and its corresponding table, we then move onto the PreferencesController.
The controller will have actions that will render views that take in user (admin) input.
In this case it's the user's preferences. And it will also have actions that manipulate the instance
of preference.

In artists and songs index views:
  The instance of preference should be referenced by the artists and songs index pages in order
  to know whether to display in an ascending or descending order.
    if @app_preferences.song_order == "ASC"
      @songs = Song.all.some method to order it in an ascending fashion, alphabetically. Im assuming
      that this is referring to alphabetic order of the song name and not something like the duration.

In the Artists and Songs controllers:
  update the new method, to check the instance of preference to know whether or not adding new artists
  is allowed.


Where do we define the one instance of Preference, so that it is available to the entire app?

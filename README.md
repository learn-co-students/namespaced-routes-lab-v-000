# Namespaced Routes Lab

## Overview

We're going to add some administrative functions to our song library.
Using what we learned about namespaced routes and module scope, we'll
organize our controllers and routes under an `admin` namespace to keep
them separate from the regular user functions.

## Instructions

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

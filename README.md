
1.) Update config/routes.rb with new route for preferences using namespace.
 
2.) Create migration for preferences table. 
a. Run rake db:migrate
b. Run rake db:seed 

3.) Create Preference model and inherit from ActiveRecord Base

4.) Create preferences controller in admin directory and indclude index and udpate action as well as implement strong params. 

5.) Update Artist and Song new and index controller action.  Also have before_action set preferences. 

6.) Create Preference Index view under views/admin/preferences



# Namespaced Routes Lab

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

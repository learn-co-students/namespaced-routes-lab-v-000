class Admin::PreferencesController < ApplicationController

  def index
    @prefs = Preference.first_or_create do |pref|
      pref.song_sort_order = 'ASC' 
      pref.artist_sort_order = 'ASC'
      pref.allow_create_songs = false
      pref.allow_create_artists = false
    end
  end

end



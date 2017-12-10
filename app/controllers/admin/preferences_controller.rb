class Admin::PreferencesController < ApplicationController
  def index
    @songs_count = Song.count
    @artists_count = Artist.count
  end
end

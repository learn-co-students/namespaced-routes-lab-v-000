class Admin::PreferencesController < ApplicationController


  def index
    
  end

  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end
end
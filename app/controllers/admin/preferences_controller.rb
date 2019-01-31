class Admin::PreferencesController < ApplicationController

  def index 
    @songs = Song.all 
    @artists = Artist.all 
    #preferenced_song = etc....
  end 
  
  end 

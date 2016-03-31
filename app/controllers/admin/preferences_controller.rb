class Admin::PreferencesController < ApplicationController
  
  def self.allow_create_artists?
    self.first.allow_create_artists?
  end
  
  def self.allow_create_songs?
    self.first.allow_create_songs?
  end
  
  def self.song_sort_order 
    self.first.song_sort_order
  end
  
  def self.artist_sort_order 
    self.first.artist_sort_order
  end
  
end

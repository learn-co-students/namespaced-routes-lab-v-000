class Admin::PreferencesController < ApplicationController

  def index
    @artist_sort_order
    @song_sort_order
  end

end

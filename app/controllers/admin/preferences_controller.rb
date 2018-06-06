class Admin::PreferencesController < ApplicationController
  
  def index
    @preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, song_sort_order: "DESC", artist_sort_order: "DESC")
  # binåding.pry
  end

end



# class Admin::PreferencesController < ApplicationController
#   def index
    
#   end
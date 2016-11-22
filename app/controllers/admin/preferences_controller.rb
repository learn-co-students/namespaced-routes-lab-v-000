class Admin::PreferencesController < ApplicationController
 
  def index
    @preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true)
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    redirect_to :index
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists)
  end

end


# 1) ArtistsController GET new redirects when access is turned off
#      Failure/Error: expect(response).to redirect_to artists_path
#        Expected response to be a <redirect>, but was <200>
#      # ./spec/controllers/artists_controller_spec.rb:9:in `block (3 levels) in <top (required)>'

#   2) SongsController GET new redirects when access is turned off
#      Failure/Error: expect(response).to redirect_to songs_path
#        Expected response to be a <redirect>, but was <200>
#      # ./spec/controllers/songs_controller_spec.rb:30:in `block (3 levels) in <top (required)>'

#       t.boolean :allow_create_artists, default: false
#       t.boolean :allow_create_songs, default: false 
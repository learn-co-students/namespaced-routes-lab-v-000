class Admin::PreferencesController< ApplicationController
  def index
    @song = Song.new
    @artist = Artist.new
  end
end

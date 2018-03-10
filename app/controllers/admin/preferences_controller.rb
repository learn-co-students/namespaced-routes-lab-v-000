class Admin::PreferencesController <  ApplicationController
  def index
    @preferences = Preference.first_or_create(song_sort_order: "DESC", artist_sort_order: "DESC", allow_create_artists: true, allow_create_songs: true)
  end

  def update
    @preferences= Preference.find(params[:id])
    @preferences.update(preferences_params)
    redirect_to :index
  end

  private
  def preferences_params
    params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_songs, :allow_create_artists)
  end
end
class Admin::PreferencesController< ApplicationController

  def index

    @preference = Preference.first
  end

  def new
    @preference = Preference.new
  end

  def edit
    @preference = Preference.find_by(id: params[:id])
  end

  def update
    #binding.pry
    @preference = Preference.find_by(id: params[:id])
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  def create
  end

private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
  end

end

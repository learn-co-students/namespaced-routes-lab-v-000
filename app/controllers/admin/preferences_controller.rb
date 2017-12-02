class Admin::PreferencesController < ApplicationController

  def index
    @pref = Preference.try(:first) or Preference.create
  end

  def update
    # raise params.inspect
    @pref = Preference.find_by(id: params[:id])
    @pref.update(pref_params)
    redirect_to songs_path
  end

  private
    def pref_params
      params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_songs, :allow_create_artists)
    end

end

class Admin::AccessController < ApplicationController
  def index
    @preference = Preference.first_or_create
  end

  def update
    @preference = Preference.find_by(id: params[:id])
    @preference.update(pref_parms)
    redirect_to admin_access_index_path
  end

  def pref_parms
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists)
  end
end

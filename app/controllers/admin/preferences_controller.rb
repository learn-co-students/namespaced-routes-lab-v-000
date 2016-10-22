class Admin::PreferencesController < ApplicationController
  layout "admin"
  
  def index

  end
  

  def update
    pref=Preference.find_by(params[:id])
    pref.update(preferences_params)
    redirect_to admin_preferences_path
  end


  private
    def preferences_params
      params.require(:preference).permit(:artist_sort_order, :song_sort_order)
    end
end
class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first_or_create
  end


  def update
    @preference = Preference.find(params[:id])

    @preference.update(preference_params)

    if @preference.save 
      redirect_to admin_preferences_path, alert: "Preferences updated"
    else   
      redirect_to :index, alert: "Invalid"
    end
  end

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists)
  end
end

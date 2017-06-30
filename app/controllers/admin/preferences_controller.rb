class Admin::PreferencesController < ApplicationController

  def index
  end


  private
  def preference_params
    params.require(:preference).permit(:allow_create_songs)
  end

end

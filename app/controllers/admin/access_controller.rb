class Admin::AccessController < ApplicationController

  def index
    if !Preference.first
      @preference = Preference.create(allow_create_songs: true, allow_create_artists: true)
    else
      @preference = Preference.first
    end
  end

  def update
    @preference = Preference.first
    @preference.update(preference_params)
    @preference.save
    redirect_to admin_access_index_path
  end

  def show
    
  end

  private
  def preference_params
    params.require(:preference).permit(:allow_create_songs)
  end
end

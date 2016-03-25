class Admin::AccessController < ApplicationController
  def index
    if !Preference.any?
      @preference = Preference.create(allow_create_artists: true, allow_create_songs: true)
    else
      @preference = Preference.find(1)
    end
  end

  def show
  end

  def update
    @preference = Preference.find(1)
    @preference.update(preference_params)
    redirect_to admin_access_index_path
  end

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists)
  end

end
class Admin::AccessController < ApplicationController

  def index
    @preference = Preference.first_or_create()
  end

  def update
    @preference = Preference.find_by(params[:id])
    @preference.update(access_params)
    redirect_to admin_access_index_path
  end

    private

    def access_params
      params.require(:preference).permit(:allow_create_songs, :allow_create_artists)
    end

end

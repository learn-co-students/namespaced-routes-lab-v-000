class Admin::AccessController < ApplicationController

  def index
    @preference = Preference.first_or_create
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(access_params)
    if @preference.save
      redirect_to admin_access_index_path, alert: "Preference saved"
    else
      render "index"
    end
  end

  private

  def access_params
    params.require(:preference).permit(:allow_create_artists, :allow_create_songs)
  end

end
class Admin::AccessController < ApplicationController

  def index
    @preference = Preference.first_or_create
  end

  def update
    @pref = Preference.find(params[:id])
    @pref.update(access_params)
    if @pref.save
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
class Admin::SettingsController < ApplicationController

  def index
    @preference = Preference.first_or_create
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(settings_params)
    if @preference.save
      redirect_to admin_settings_index_path, alert: "Preference saved"
    else
      render "index"
    end
  end

  private

  def settings_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order)
  end

end
class Admin::SettingsController < ApplicationController

  def index
    @preference = Preference.first_or_create()
  end

  def update
    @preference = Preference.find_by(id: params[:id])
    @preference.update(pref_params)

    redirect_to admin_settings_index_path
  end

    private

    def pref_params
      params.require(:preference).permit(:artist_sort_order, :song_sort_order)
    end

end

class Admin::SettingsController < ApplicationController

  def index
    @preference = Preference.first_or_create(artist_sort_order: 'DESC', song_sort_order: 'DESC')
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(settings_params)
    redirect_to admin_settings_index_path
  end

  private

    def settings_params
      params.require(:preference).permit(:song_sort_order, :artist_sort_order)
    end
end

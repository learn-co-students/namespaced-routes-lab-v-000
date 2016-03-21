class Admin::SettingsController < ApplicationController

  def index
    if !Preference.first
      @preference = Preference.create(artist_sort_order: "DESC", song_sort_order: "DESC")
    else
      @preference = Preference.first
    end
  end

  def update
    @preference = Preference.first
    @preference.update(setting_params)
    @preference.save
    redirect_to admin_settings_index_path
  end

  private
  def setting_params
    params.require(:preference).permit(:artist_sort_order)
  end

end

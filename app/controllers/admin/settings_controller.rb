class Admin::SettingsController < ApplicationController
  
  before_action :set_preference_obj, only:[:index, :update]

  def index
  end

  def update
    @preference.update(pref_params)
    redirect_to admin_settings_index_path
  end

  private

    def pref_params
      params.require(:preference).permit(:song_sort_order, :artist_sort_order)
    end

end

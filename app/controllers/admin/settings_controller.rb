class Admin::SettingsController < ApplicationController
  def index
    if Preference.first.present?
      @preference = Preference.first
    else 
      @preference = Preference.create(song_sort_order: "DESC", artist_sort_order: "DESC")
    end
  end

  def update
    @preference = Preference.first
    if @preference.update(settings_params)
      redirect_to admin_settings_index_path
    else 
      render :index
    end
  end
  
  private 
  
  def settings_params 
    params.require(:preference).permit(:artist_sort_order, :song_sort_order)
  end
end

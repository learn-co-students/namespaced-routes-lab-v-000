class Admin::SettingsController < ApplicationController
  def index
    if !Preference.any?
      @preference = Preference.create(song_sort_order: "DESC", artist_sort_order: "DESC")
    else
      @preference = Preference.find(1)
    end
  end

  def show
  end

  def create

  end

  def update
    @preference = Preference.find(1)
    @preference.update(preference_params)
    redirect_to admin_settings_index_path
  end

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order)
  end

end

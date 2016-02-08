class Admin::AccessController < ApplicationController

  before_action :set_preference_obj, only: [:index, :update]
  
  def index
  end

  def update
    @preference.update(pref_params)
    redirect_to admin_access_index_path
  end

  private

    def pref_params
      params.require(:preference).permit(:allow_create_artists, :allow_create_songs)
    end

end

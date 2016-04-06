class Admin::AccessController < ApplicationController
  layout "admin"

  def index
    if Preference.all.empty?
      @preference = Preference.create
    else
      @preference = Preference.first
    end

  end

#   def edit
# # binding.pry
#     @preference = Preference.find_by(id: params[:id])
#   end


  def update
    preference=Preference.find(params[:id])
# binding.pry
    preference.update(preference_params)
    redirect_to admin_access_index_path
  end

  private

    def preference_params
      params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
    end

end
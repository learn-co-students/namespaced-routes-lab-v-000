class Admin::AccessController < ApplicationController
  def index
    @preference = Preference.first_or_create
  end

  def update
    # set allow_create_artists and allow_create_songs using .first_or_create
    @preference = Preference.first_or_create
    #binding.pry
    @preference.update(preference_params)
    redirect_to admin_access_index_path
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_artists, :allow_create_songs)
  end
end

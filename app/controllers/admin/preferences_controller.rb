class Admin::PreferencesController < ApplicationController

  def index
    @preference = Preference.first_or_create()
  end

  def create

  end

private

    def preference_params
      params.require(:preference).permit(:allow_create_artists, :allow_create_songs, :song_sort_order, :artist_sort_order)
    end

end


def artist_params
  params.require(:artist).permit(:name)
end

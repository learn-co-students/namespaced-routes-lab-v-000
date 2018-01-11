class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.first_or_create(song_sort_order: "ASC", artist_sort_order: "ASC", allow_create_artists: true, allow_create_songs: true)
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    @preference.save
    redirect_to artists_path
  end

  private
  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end
end

# {
#   "utf8"=>"✓",
#   "_method"=>"patch",
#   "authenticity_token"=>"DPrU8A10iqspkHMGjGfm3vLYxdHBi6W4TkS6ZaIGa2ARdIu+5c/u3ENubYEQTD6aXoTbJbfCxqrhgqXbsi2CPw==",
#   "preference"=>{
#       "artist_sort_order"=>"ASC",
#       "song_sort_order"=>"ASC",
#       "allow_create_artists"=>"false",
#       "allow_create_songs"=>"false"
#     },
#   "commit"=>"Update Preference",
#   "controller"=>"admin/preferences",
#   "action"=>"update",
#   "id"=>"1"}

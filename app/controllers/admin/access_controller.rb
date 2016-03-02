class Admin::AccessController < ApplicationController

	def index
		@preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true)
	end

	def update	
		@preference = Preference.find(params[:id])
		@preference.update(access_params)
		redirect_to admin_access_index_path
	end

	private
	
	def access_params
		params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_songs, :allow_create_artist)
	end

end

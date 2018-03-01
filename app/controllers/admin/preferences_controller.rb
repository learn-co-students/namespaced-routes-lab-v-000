class Admin::PreferencesController < ApplicationController

	def index
		@preferences = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, song_sort_order: "DESC", artist_sort_order: "DESC")
	end 

	def update 
		@preference = Preference.find(params[:id])
		@preference.update(preference_params)
		redirect_to admin_preferences_path
	end 

	private
	def preference_params
		params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
	end 
	
end

# Ask Luisa how this would be worked out -- after a user submits this form, what would happen, it would go to... have to create the next admin/preferences view? Load it to the data base? not as new, but as ???
# also ask Luisa, first_or_create vs find_or_create. Looked it up but still not clear. 


class Admin::PreferencesController < ApplicationController

	def index
		# stands for the edit page too
		@preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, song_sort_order: "DESC", artist_sort_order: "DESC")
	end

	def update
		@preference = Preference.find(params[:id])
	
		if @preference.update(preference_params)
			redirect_to admin_preferences_path, notice: "Updated!"
		else
			render :index, alert: "Not able to update"
		end
	end

	private

		def preference_params
			params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
		end
end

class Admin::AccessController < ApplicationController

	def index
		@preference = Preference.first_or_create
	end

	def update
		@preference = Preference.first
		@preference.update(access_params)
		redirect_to admin_access_index_path, alert: "Your preferences have been updated"
	end

	private

	def access_params
		params.require(:preference).permit(:allow_create_artists, :allow_create_songs)
	end

end


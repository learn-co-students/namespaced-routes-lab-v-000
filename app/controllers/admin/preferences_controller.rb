class Admin::PreferencesController < ApplicationController
	
	before_action :set_preferences, only: [:index, :create]

	def index
		
	end

	def create 
		

		@preferences.artist_sort_order = set_sort_order(preferences_params[:artist_sort_order])
		@preferences.song_sort_order = set_sort_order(preferences_params[:song_sort_order])
		@preferences.allow_create_artists = access_permission(preferences_params[:allow_create_artists])
		preferences.allow_create_songs = access_permission(preferences_params[:allow_create_songs])

		@preferences.save

		redirect_to admin_preferences_path
	end


	private

	def set_preferences
		@preference ||= Preference.new.default
	end

	def preferences_params
		params.require(:admin_preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
	end
end

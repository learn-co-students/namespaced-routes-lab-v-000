class Admin::PreferencesController < ApplicationController
 	def index
		@preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, song_sort_order: "ASC", artist_sort_order: "ASC")
	end

	def edit
		@preference = Preference.first
	end

	def update
		@preference = Preference.first
		@preference.song_sort_order = params[:song_sort_order]
		@preference.artist_sort_order = params[:artist_sort_order]
		@preference.allow_create_artists = params[:allow_create_artists]
		@preference.allow_create_songs = params[:allow_create_songs]
		@preference.save
	end
end
class Admin::PreferencesController < ApplicationController
	def index
		@preference = Preference.first_or_create(artist_sort_order: "DESC", song_sort_order: "DESC", allow_create_artists: true, allow_create_songs: true)
	end
end
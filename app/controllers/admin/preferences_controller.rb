class Admin::PreferencesController < ApplicationController
	def index
		@preferences = Preference.all
	end
	
	def show
		@preference = Preference.find(params[:id])
	end
	
	def new
		@preference = Preference.new
	end
	
	def create
		@preference = Preference.new(preference_params)
		@preference.create
		
		redirect_to admin_preference_path(@preference)
	end
	
	def edit
		@preference = Preference.find(params[:id])
	end
	
	def update
		@preference = Preference.find(params[:id])
		@preferece.update(preference_params)
		
		redirect_to admin_preference_path(@preference)
	end
	
	private
	def preference_params
		params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
	end
end
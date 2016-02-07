class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  	private

  	def current_preference
		Preference.exists?(pref_params[:id]) ? Preference.find(pref_params[:id]) : nil
	end

	def pref_params
			params.require(:preference).permit(:id, :song_sort_order, :artist_sort_order, :allow_create_artists, :allow_create_songs)
	end

end

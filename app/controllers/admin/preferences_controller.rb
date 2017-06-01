class Admin::PreferencesController < ApplicationController
  before_action :set_preference, only: [:edit, :update, :show]

  def index
    @preference = Preference.first_or_create(artist_sort_order: "ASC", song_sort_order: "ASC", allow_create_artists: true, allow_create_songs: true)
  end

  def edit
  end

  def show
  end

  def update
    @preference.update(preference_params)
    redirect_to admin_preferences_path
  end

  def new
    @preference = Preference.new
  end

  def create
    @preference = Preference.create(preference_params)
    redirect_to [:admin, @preference]
  end

  private

  def set_preference
    @preference = Preference.find_by(id: params[:id])
  end

  def preference_params
    params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
  end

end

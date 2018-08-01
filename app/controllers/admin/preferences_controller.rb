require 'pry'
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

    if @preference.save
      redirect_to admin_preferences_path
    else
      render :new
    end
  end


  def edit
    @preference = Preference.find(params[:id])
  end

  def update
    @preference = Preference.find(params[:id])
    @preference.update(preference_params)
    if @preference.save
      redirect_to admin_preferences_path
    else
      render :edit
    end
  end

  private
  def preference_params
        params.require(:preference).permit(:song_sort_order, :artist_sort_order, :allow_create_songs, :allow_create_artists)
  end
  def song_params
    params.require(:song).permit(:title, :artist_name)
  end
end

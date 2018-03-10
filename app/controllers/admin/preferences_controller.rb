class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.find_or_create_by(allow_create_artists: true, allow_create_songs: true, song_sort_order: "DESC", artist_sort_order: "DESC")
  end


  def show
    @preference = Preference.find(params[:id])
  end

  def new
    binding.pry
    @preference = Preference.new
  end

  def create
    @preference = Preference.new(preference_params)

    if @preference.save
      redirect_to @preference
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
      redirect_to @preference
    else
      render :edit
    end
  end

  def destroy
    @preference = Preference.find(params[:id])
    @preference.destroy
    flash[:notice] = "Preference deleted."
    redirect_to preferences_path
  end

  private

  def preference_params
    params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order)
  end
end

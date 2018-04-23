class ArtistsController < ApplicationController
  #solution
  #before_action :set_preferences, only: [:index, :new]
  def index
    @preference = Preference.first
    if @preference && @preference.artist_sort_order
      @artists = Artist.order(name: @preference.artist_sort_order)
    else
      @artists = Artist.all
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @preference = Preference.first
    if @preference && @preference.allow_create_artists == true
      @artist = Artist.new
    else
      redirect_to artists_path
    end
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    @artist.update(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "Artist deleted."
    redirect_to artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

 #solution:
 #  def set_preferences
 #   @preferences = Preference.first
 # end
end

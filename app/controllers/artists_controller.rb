class ArtistsController < ApplicationController
  before_action :set_preferences, only: [:index, :new]

  def index
    #binding.pry
    #if preferences exist, and there is a artist_sort_order attribute for preferences
    if @preferences && @preferences.artist_sort_order
        #create a variable with a hash of all of the Artists that are orders by name, depending on the artist_sort_order attribute for the preferences)
        @artists = Artist.order(name: @preferences.artist_sort_order)
    else
            @artists = Artist.all
    end

  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
#binding.pry
    #if preferences exist and the user does not have a preference allowing them to create an artist
    if @preferences && !@preferences.allow_create_artists
        #send back to artists index
        redirect_to artists_path
    else
        @artist = Artist.new
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

  def set_preferences
        @preferences = Preference.first
  end
end
